# TODO_fix.md - Fix /predictdata endpoint

- [ ] 1. Refactor predict logic in app.py to helper function _do_predict()
- [ ] 2. Add @app.route('/predictdata', methods=['POST']) calling _do_predict()
- [ ] 3. Test by running `cd Customer-Survival-Analysis-and-Churn-Prediction && python app.py`
- [ ] 4. Verify http://127.0.0.1:5000/predictdata accepts POST and returns prediction
- [ ] 5. Update this TODO as steps complete
