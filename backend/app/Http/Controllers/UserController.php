<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    private $request;

    public function __construct(Request $request) {
        $this->request = $request;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $users = User::all();
//        return view('user.index',compact('users'));
    }

    public function userSelect()
    {
//        $employees = Employee::NotUsers()->get();
//        return view('user.userSelect',compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
//        if ($employee = Employee::where('id','=',$id)->first()){
//            $roles = Role::all()->pluck('name','id');
//            return view('user.create',compact('id','employee','roles'));
//        }
//
//        return redirect('home');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        $roleCount = count(Role::all());
//
//        $this->validate($request,[
//            'user_name'=>'required|min:6|unique:users',
//            'email'=>'required|email|unique:users',
//            'role_id'=>'required|integer|between:1,'.$roleCount.'',
//            'is_active'=>'required|integer|between:1,2',
//            'password'=>'required|min:6|confirmed'
//        ]);
//
//        if ($request->id !='' && $employee = Employee::where('id','=',$request->id)->first()){
//
//            if ($employee->users_id == null){
//                $user = new User;
//                $user->user_name = $request->user_name;
//                $user->email = $request->email;
//                $user->role_id = $request->role_id;
//                $user->is_active = $request->is_active;
//
//                $user->password = bcrypt($request->password);
//                $user->save();
//                $employee->users_id = $user->id;
//                $employee->update();
//
//                return redirect()->back()->with(['success'=>'New user created successfully !']);
//            }
//            return redirect('home');
//        }
//
//        return redirect('home');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function view($id)
    {
        if ($user = User::where('id','=',$id)->first()){
//            $roles = Role::all()->pluck('name','id');
            return response()->json([
                'data' => $user
            ], 200);
        }
        return response()->json([
            'data' => 'User Not Found'
        ], 400);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
//        $roleCount = count(Role::all());
//        $user = User::where('id','=',$id)->first();
//        $this->validate($request,[
//            'user_name'=>'required|min:6|unique:users,id,'.$user->id,
//            'email'=>'required|email|unique:users,id,'.$user->id,
//            'role_id'=>'required|integer|between:1,'.$roleCount.'',
//            'is_active'=>'required|integer|between:1,2',
//            'password'=>'nullable|min:6|confirmed'
//        ]);
//
//        if ($user = User::where('id','=',$id)->first()){
//
//            $user->user_name = $request->user_name;
//            $user->email = $request->email;
//            $user->role_id = $request->role_id;
//            $user->is_active = $request->is_active;
//
//            if($request->password != ''){
//                $user->password = bcrypt($request->password);
//            }
//
//            $user->update();
//
//            return redirect()->back()->with(['success'=>'User details updated successfully !']);
//
//        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
