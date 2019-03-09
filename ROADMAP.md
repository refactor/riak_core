Roadmap
-----

* [x] update latest rebar3

* [ ] Remove app_helper, not needed anymore (A)

* [ ] Investigate where number of vnodes are specified

* [ ] Extract reusable data structures into own repo Affected modules: 
  * [ ] `riak_core_priority_queue` 
  * [ ] `vectorclock` 
  * [ ] `hashtree` 
  * [ ] `hashtree_tree`
  * [ ] `dvvset`
  
* [ ] Replace legacy components
  * [ ] `gen_fsm_compat` -> `gen_statem`
  * [ ] `riak_core_gen_server` -> `gen_server`
    * uses/optimizes gen_server R13, legacy or not? compare R13 with R21
  * [ ] `supervisor_pre_r14b04` -> `supervisor`

  
* [ ] Remove dependency strong consistency `riak_ensemble`
  * [ ] Discuss if this is needed
    * Default is false


* [x] Remove lager
  * [x] Source code
  * [x] Dependencies

  
* [ ] Remove `eleveldb` dependency
  * [ ] Investiage what type of metadata are stored
  * [ ] Replace eleveldb calls in `hashtree` with other other system. Candidate: `DETS`
    * `eleveldb` is *not* used to [persist the hashtree](https://github.com/basho/riak_core/wiki/Cluster-Metadata-Internals)
    * `riak_core` abuses eleveldb iterator call as a snapshot capture
  
* [ ] Update poolboy dependency

* [ ] Remove node ring versioning (A)
  * [ ] Discuss if rolling upgrades of antidote applications are needed
  
* [ ] Remove riak CLI (A)
  * [ ] Removing CLI removes dependency `clique`

* [ ] Investigate if `cuttlefish` is needed
  
* [ ] Use own metric system
  * [ ] Remove old metrics `folsom`, `basho_stats`, `riak_sysmon`, `exometer_core` and calls in code
  * [ ] Replace with own metrics, marked in code as `%% STATS`

* [ ] Remove `riak_core_aae_vnode` and corresponding code additions (look up previous commits)
  
* [ ] Investigate why `erl_first_files` is needed
* [ ] Investigate why `goldrush` is needed
  
* [ ] Remove `rebar_erl_vsn` plugin and pre-process call when code is up-to-date

* [ ] Discuss handoff
  * Modules: `?`
* [ ] Discuss bucket system
  * Modules: `?`
* [ ] Discuss SSL communication between nodes
  * Dependencies: `pbkdf2`
  * Modules: `?`

