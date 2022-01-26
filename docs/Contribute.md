# Terraform Module: ec2 | Change Log ~ Contribute


[Home](../ReadMe.md) |
[Change Log](ChangeLog.md)  >
**Contribute**

---

To help ensure all projects are produced and maintained to the highest standards, much of the required information will be pulled directly from the raw code and automatically generated using one of the `.terraform-docs` templates.
By using the `manage.sh` file within this tool, it will review the layout you have in place and produce documentation accordingly.
Please review the guidance on [Defining Variables](../.terraform-docs/guides/standards.md) for further assistance on how to create Terraform to compliant standards.

> ## .terraform-docs
>
> This tool has been developed to automate the creation of clear documentation from Terraform repositories, pulling the `requirements`, `Inputs`, `outputs` and other data fields direct from the source code.
> To generate this documentation, software will need to be installed called [`terraform-docs`](https://terraform-docs.io).
>
> If this submodule is empty, perform `git submodule update --init --remote` from the repository root to re-populate and update this directory.
>
> To execute this submodule if not installed, use `bash ./.terraform-docs/manage.sh` from the root of the repository it is attached.
>> If installed, replace this with `tfdocs`, this will be executable from anywhere within the git repository.<br>To Install this tool locally, follow the guidance within [.terraform-docs](../.terraform-docs/ReadMe.md).


### Create Documentation

To generate documentation, the repository will need to be first initialised. This is so all required files are present to validate the automation process.
This can be done separately to the generation of the readme file by perform the following command from within the git repository: -

```bash
tfdocs init
```

Depending on the template used, the files produced are there to populate the [ReadMe.md](../ReadMe.md) file. With files updated in the relevant areas, perform the following : -

```bash
tfdocs readme
```

---

As a contributor, any updates to code will require an update be provided within the [.Log](.Logs.md) file.
If at all the user experience is affected, documentation must reflect these changes, providing a consistent place for users to best understand how to maintain their scripts.

Updates pushed to the `master` branch are to be tagged. Dependent on its implementation, this can reside within one of 3 levels:

* `1` - Fundamental change made to the deployment, that will affect resources and/or user interaction.

* `2` - Patch or refinement that affects improve script performance/functionality, but the current user experience is not affected.

* `3` - Small change that fixes bugs/breaks in existing scripts.

Displayed as 'v`1`.`2`.`3`'.

> Depending on which level the change resides, the corresponding tag value must be increased to reflect this when merged into the `master` branch.

---

## Change Log Templates

### **Level 1** - _Full Release_

```md
## **v1.0.0**

This Version [adds, changes] features.
These features are:

* FEATURE

**FEATURE** has been [implemented, changed] to ...

Please refer to the [Read Me](../ReadMe.md) file within this version for instructions on how to best utilize this build.

Publisher: [NAME](Contribute.md)
```

### **Level 2** - _Full Update_

```md
### **v0.2.0**

This Version [improves, fixes, patches] the following feature(s) and/or file(s):

* FEATURE / FILES

The FEATURE / FILE has received the [improves, fixes, patches] to ...

Publisher: [NAME](Contribute.md)
```

### **Level 3** - _Minor Update_

```md
#### **v0.0.3**

This Version fix's the following feature(s) and/or file(s):

* FEATURE / FILES

This resolves ...

Publisher: [NAME](Contribute.md)

```

[Return to Top](#)


###### Copyright &copy; Test Chamber LTD 2022 - *Deployable* module: terraform-docs v0.16.0 | tfdocs V0.6.0 