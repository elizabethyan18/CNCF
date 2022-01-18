To Reproduce

Set up a clustoer following the Wind River Cloud Platform documentation.

These tests are done on a system with 2xmaster nodes and 2xworker nodes, and the WRCP21.12GA load. 

Wind River Cloud Platform
Release 21.12
Wind River Systems, Inc.

SW_Version="21.12" Build_target="Host Installer" Build-Type="Formal" Build-ID="2021-11-23_00-00-10" SRC_Build_ID="36"
JOB="WRCP_21.12_BUILD" BUILD_BY="Jenkins" BUILD-NUMBER="28" BUILD_HOST="yow-cgts4-lx-wrs.com" BUILD_DAT="2021-11-23_00-00-10"

Make sure your KUBECONFIG environment variable is set correctly for communicating with your cluster. 

Download sonobuoy_0.18.3_linux_amd64.tar.gz from https://github.com/vmware-tanzu/sonobuoy/release.

Run:
$ sonobuoy run --mode=certified-conformance

Wait for sonobuoy status to indicate complete.

$ sonobuoy status

Once sonobuoy status shows the run as completed, copy the output directory from the main Sonobuoy pod to a local directory: 

$ outfile=$(sonobuoy retrieve)

This copies a single .tar.gz snapshot from the Sonobuoy pod into your local .directory. Extract the contents into ./results with:

mkdir ./results; tar xzf $outfile -C ./results

Note: The two files required for submission are located in the tarball under plugins/e2e/results/{e2e.log, junit.xml}.

To clean up Kubenetes objects created by Sonobuoy, run: 

sonobuoy delete

We have one failed TC, we have this reported in https://issueexplorer.com
https://issueexploer.com/issue/kubenetes/kubenetes/105039

Note: 
There is no fix for the issue. There was a try to change the test case to run "ingress resource create" just once in the "e2e test suite" but it was rejected by the community. 

For reference see: https://github.com/kebenetes/kubenetes/pull/100449
There is a comment on https://issueexplorer.com/issue/kebenetes/kubenetes/105039 saying that we shouldnot run "e2e tests" on an existing cluster with validation webhook from specific Ingress Controllers. 
