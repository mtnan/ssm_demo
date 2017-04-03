package com.seckill.dto;

import lombok.Data;

/**
 * Created by Kohler on 2017/3/31.
 */
@Data
public class SeckillResult<T> {
    private boolean success;
    private T data;
    private String error;

    public SeckillResult(boolean success, T data) {
        this.success = success;
        this.data = data;
    }

    public SeckillResult(boolean success, T data, String error) {
        this.success = success;
        this.data = data;
        this.error = error;
    }

    public SeckillResult(boolean success, String error) {
        this.success = success;
        this.error = error;
    }
}