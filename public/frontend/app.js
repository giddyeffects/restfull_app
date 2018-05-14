const questions_endpoint = 'http://restfull.app/api/questions'
const choices_endpoint = 'http://restfull.app/api/choice/'

const vm = new Vue({
    el: '#app',
    data: {
        questions: [],
        questionIndex: 0,
        choices: [],
        answers: [],
        status: ''
    },
    methods: {
        getQuestions() {
            //Array(this.questions.length).fill('')
            axios.get(questions_endpoint).then((response) => {
                this.questions = response.data;
                this.answers = Array(this.questions.length).fill('')
                //console.log("the questions are "+response.data);
            }).catch(error => { console.log(error) })        
            
        },
        getChoices() {
            axios.get(choices_endpoint+(this.questionIndex+1)).then((response)=>{
                this.choices = response.data
                
            }).catch( error => { console.log(error) })
        },
        next: function () {
            this.questionIndex++;
            this.status=''
            this.getChoices()
        },
        prev: function () {
            this.status = ''
            this.questionIndex--;
            this.getChoices()
        },
        compare: function (choice, answer) {
            if ( choice == answer) {
                this.status = "Correct"
            }
            else {
                this.status = "Wrong"
            }
        }
    },
    mounted() {
        this.getQuestions()
        this.getChoices()
    },
    computed: {
        // score: () => {
        //     let total = 0;
        //     for (let i = 0; i < this.answers.length; i++) {
        //         if (this.answers[i] == this.questions[i].answer_id) {
        //             total += 1;
        //         }
        //     }
        //     return total;
        // }
    }
});