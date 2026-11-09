# Formal dependencies

Cubical Agda Library v0.9, commit `87af036ebd1c87956cf08fea44e62c7cf76392ca`:

- `Cubical.Foundations.Equiv.Base.fiber` (`Equiv/Base.agda:9-10`): homotopy fiber.
- `Cubical.Data.Sigma.Properties.fiberProjEquiv` (`Sigma/Properties.agda:459-481`): fiber of a dependent projection.
- `Cubical.Foundations.Transport.substEquiv` (`Transport.agda:73-74`): transport packaged as an equivalence.
- `Cubical.Foundations.Transport.substComposite` (`Transport.agda:130-134`): composition path.
- `Cubical.Foundations.Prelude.transportRefl` (`Prelude.agda:298-299`): reflexivity path.
- `Cubical.Homotopy.Loopspace.Ω` (`Loopspace.agda:28-30`): pointed loop space.
- `Cubical.Foundations.Pointed.Base._≃∙_` (`Pointed/Base.agda:41-44`): pointed equivalence.
- `Cubical.Homotopy.Group.Base.πGr`, `πIso` (`Group/Base.agda:93-103, 1139-1148`): group-valued homotopy groups and their functoriality.

`NLabMonodromy.agda` defines source-indexed wrappers and technical packaging;
the library declarations remain the original verified implementations.
