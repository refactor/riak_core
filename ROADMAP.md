Roadmap
-----

* [x] update latest rebar3

* [x] Remove app_helper, not needed anymore

* [ ] Investigate where number of vnodes are specified

* [ ] Where is the `riak_object` module and why is it used in other modules?

* [ ] Is `riak_core_stat_xform` `parse_transform` actually applied, and if so, what does it do?

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

  
* [x] Remove dependency strong consistency `riak_ensemble`
  * [x] Discuss if this is needed
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

* [ ] Remove node ring versioning 
  
* [x] Remove riak CLI
  * [x] Removing CLI removes dependency `clique`

* [ ] Investigate if `cuttlefish` is needed
  
* [ ] Use own metric system
  * [x] Remove `exometer_core` and calls in code
  * [x] Remove stats modules
  * [ ] Remove `folsom`, `riak_sysmon`
  * [ ] Replace with own metrics, marked in code as `%% STATS`

* [ ] Remove `riak_core_aae_vnode` and corresponding code additions (look up previous commits)
  
* [x] Investigate why `erl_first_files` is needed -> not needed, it seems
* [ ] Investigate why `goldrush` is needed
  
* [x] Remove `rebar_erl_vsn` plugin and pre-process call

* [ ] Discuss handoff
  * Modules: `?`
* [ ] Discuss bucket system
  * Modules: `?`
* [ ] Discuss SSL communication between nodes
  * Dependencies: `pbkdf2`
  * Modules: `?`

