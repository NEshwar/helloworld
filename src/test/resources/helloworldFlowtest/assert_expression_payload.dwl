%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "this is a message from Mule API via Jenkins CICD Deployment and Git SCM Hook"
})