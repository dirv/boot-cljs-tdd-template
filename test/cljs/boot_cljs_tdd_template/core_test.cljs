(ns boot-cljs-tdd-template.core-test
  (:require-macros [cljs.test :refer [deftest testing is async]])
  (:require [cljs.test]
            [boot-cljs-tdd-template.core :as core]))

(deftest something []
  (testing "first test"
    (is (= 1 2))))


