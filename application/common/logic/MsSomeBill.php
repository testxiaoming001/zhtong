<?php


namespace app\common\logic;


class MsSomeBill extends BaseLogic
{

    /**
     *
     * 获取订单列表
     *
     * @param array $where
     * @param bool $field
     * @param string $order
     * @param int $paginate
     * @return mixed
     * @author 勇敢的小笨羊
     */
    public function getBillsList($where = [], $field = true, $order = 'add_time desc', $paginate = 1)
    {
        $this->modelMsSomeBill->alias('a');
        $this->modelMsSomeBill->limit = !$paginate;
        $join = [
            ['ms b', 'a.uid = b.userid', 'left'],
        ];
        $this->modelMsSomeBill->join = $join;
        $data = $this->modelMsSomeBill->getList($where, $field, $order, $paginate);
        return $data;
    }

    /**
     * 获取单总数
     *
     * @param $where
     * @return mixed
     * @author 勇敢的小笨羊 <brianwaring98@gmail.com>
     *
     */
    public function getBillsCount($where = [])
    {
        return $this->modelMsSomeBill->alias('a')->join('ms b', 'a.uid = b.userid', 'left')
            ->where($where)->count();
    }

}