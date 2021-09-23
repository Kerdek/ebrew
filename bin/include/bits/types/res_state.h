#ifndef __res_state_defined
#define __res_state_defined 1

#include <sys/types.h>
#include <netinet/in.h>

/* res_state: the global state used by the resolver stub.  */
#define MAXNS			3	/* max # name servers we'll track */
#define MAXDFLSRCH		3	/* # default domain levels to try */
#define MAXDNSRCH		6	/* max # domains in search path */
#define MAXRESOLVSORT		10	/* number of net to sort on */

struct __res_state {
	i32	retrans;		/* retransmition time interval */
	i32	retry;			/* number of times to retransmit */
	unsigned i64 options;		/* option flags - see below. */
	i32	nscount;		/* number of name servers */
	struct sockaddr_in
		nsaddr_list[MAXNS];	/* address of name server */
	unsigned i16 id;		/* current message id */
	/* 2 byte hole here.  */
	char	*dnsrch[MAXDNSRCH+1];	/* components of domain to search */
	char	defdname[256];		/* default domain (deprecated) */
	unsigned i64 pfcode;		/* RES_PRF_ flags - see below. */
	unsigned ndots:4;		/* threshold for initial abs. query */
	unsigned nsort:4;		/* number of elements in sort_list[] */
	unsigned ipv6_unavail:1;	/* connecting to IPv6 server failed */
	unsigned unused:23;
	struct {
		struct in_addr	addr;
		unsigned i32	mask;
	} sort_list[MAXRESOLVSORT];
	/* 4 byte hole here on 64-bit architectures.  */
	void * __glibc_unused_qhook;
	void * __glibc_unused_rhook;
	i32	res_h_errno;		/* last one set for this context */
	i32	_vcsock;		/* PRIVATE: for res_send VC i/o */
	unsigned i32 _flags;		/* PRIVATE: see below */
	/* 4 byte hole here on 64-bit architectures.  */
	union {
		char	pad[52];	/* On an i386 this means 512b total. */
		struct {
			unsigned i16		nscount;
			unsigned i16		nsmap[MAXNS];
			i32			nssocks[MAXNS];
			unsigned i16		nscount6;
			unsigned i16		nsinit;
			struct sockaddr_in6	*nsaddrs[MAXNS];
#ifdef _LIBC
			unsigned i64 __glibc_extension_index
			  __attribute__((packed));
#else
			unsigned i32		__glibc_reserved[2];
#endif
		} _ext;
	} _u;
};

typedef struct __res_state *res_state;

#endif /* __res_state_defined */
