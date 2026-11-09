# Experiment 003 report

Experiment 003 freezes the prior nLab §4 source capture, records its hash, and
does not silently adopt the later live-page wording. The two researcher approved
editorial repairs are listed in `specification/SOURCE_CAPTURE.json`. The output
has complete statement-to-declaration coverage for the frozen construction list.

The new module gives sixteen local declarations. Most are source-indexed wrappers
around nine attributed Cubical Library mechanisms; four are technical auxiliaries
for notation or based packaging. This is not presented as new mathematics. Ten
frozen mathematical statements have checked formal evidence.

The Shadow Paper was drafted after the Agda module checked. Its style was informed
by existing Hongwei Wang mathematical materials in the original experiment
workspace: an AMS article structure, connected exposition, numbered mathematical
statements, and diagrams for categorical structure. The paper preserves those
restrained conventions while disclosing source-informed AI assistance.

The only measured elapsed time is the monotonic whole-experiment duration:
762.091 seconds. Per-stage durations, token usage, cost, and model execution time
were not independently instrumented and are deliberately left unavailable in
`EXPERIMENT_LOG.json`. The Agda code itself had no failed check. One command
invocation had an incorrect working directory and was rerun from the repository
root before source checking; this is recorded as an operational failed attempt.
One sandboxed public-page retrieval failed due to DNS restriction before the
approved retrieval succeeded; this is a network limitation, not a mathematical
or type-checking failure.

All mathematical correctness, formalization correctness, and semantic alignment
decisions remain pending for `REV-001`. No external publication, repository push,
website edit, or email action was performed.
