import React from 'react'

const Subs = (props) => {
    const {subs} = props
    const renderSubs = ()=> {

        return subs.map(sub => {
            return(
                <div>
                    <h1>{sub.name}</h1>
                    <a href={`/subs/${sub.id}`}>Show</a>
                    <a href={`/subs/${sub.id}/edit`}>Edit</a>
                    <a href={`/subs/${sub.id}`} data-method='delete'>Delete</a>
                </div>
            )
        })
    }
    return(
        <div>
            <br></br>
            <a href='/subs/new'>New</a>
            <h1>{renderSubs()}</h1>
        </div>
    )
}

export default Subs