type
  exok  (x X o O k K    ) E
  exoka (x X o O k K a E) E
;

export esize    exok
export ecast    exok
export enat     exok
export ewrite   exok
export eaddr    exok
export escratch exok
export ebrk     exok
export eibrk    exok
export eneg     exok
export elnot    exok
export eid      exok
export eerr     exok
export eread    exok
export estr     exok
export ebrace   exok
export eparen   exok
export eexit    exok
export ebyte    exok

export eas      exoka
export eelem    exoka
export ederef   exoka
export eseq     exoka
export elor     exoka
export eass     exoka
export eis      exoka
export efor     exoka
export eret     exoka
export emul     exoka
export ediv     exoka
export emod     exoka
export ethen    exoka
export eelse    exoka
export econd    exoka
export eadd     exoka
export esub     exoka
export eshl     exoka
export eshr     exoka
export eb       exoka
export ea       exoka
export ebe      exoka
export eae      exoka
export ee       exoka
export ene      exoka
export eland    exoka
export ecall    exoka
export emem     exoka

export gexpr (e E c nat l nat) nat

export gdrop (e E c nat    ) none
export geval (e E c nat l nat) none
