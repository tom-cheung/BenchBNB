import { $CombinedState } from "redux"

export const createUser = data => {
    return $.ajax(
        {
            url: '/api/users',
            method: 'POST',
            data // {username: 'asdfjk' password: 'asdfo'}
        }
    )
}



// $.ajax({ method: 'POST',    url: 'api/session', data: {user: {username: 'joe2', password: 'hunter1212'}} }).then(res => console.log(res))