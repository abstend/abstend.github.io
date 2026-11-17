# abstend.com

The public site for Abstend: independent honesty and knowledge scorecards for the open AI models people run locally.
By Mark Galyan.

- `index.html`: the front page (hand-written).
- `scorecard.html`, `badges/`: generated in Project-Apollo (`data/scorecard/`) and copied here by `./sync.sh`.
- Every number links to a receipt in https://github.com/apollo-mg/Project-Apollo.

## Publishing

GitHub Pages from the root of the default branch. `.nojekyll` serves the files as they are.
After the domain is bought, add a `CNAME` file containing `abstend.com` and set the DNS records GitHub's Pages
documentation lists for an apex domain; turn on "Enforce HTTPS" once the certificate is issued.

## Updating

1. Rebuild the scorecard in Project-Apollo (`data/scorecard/build_scorecard.py`).
2. `./sync.sh ../Apollo`
3. Update the counts and the latest finding on `index.html` if they changed; add to the corrections log when a
   published number changes.
