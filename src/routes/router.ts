import express, { Request, Response, NextFunction } from 'express';
import user from './user'
import auth from './auth'

const router = express();

// 스케쥴 관련 요청을 scrouter로 이동
router.use('/user', user);
router.use('/auth', auth);


export default router;