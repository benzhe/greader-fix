.class public Llu2;
.super Lis2;
.source "SourceFile"


# static fields
.field public static C:Lrn2; = null

.field public static D:Ljava/util/concurrent/ExecutorService; = null

.field public static E:Lpq2; = null

.field public static final F:Ljava/lang/Object;

.field public static final G:Ljava/lang/String; = "lu2"

.field public static H:Z = false

.field public static I:J


# instance fields
.field public A:Ldc3;

.field public B:I

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llu2;->F:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lis2;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Llu2;->y:Z

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Llu2;->B:I

    .line 4
    iput-object p2, p0, Llu2;->z:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Llu2;->y:Z

    .line 6
    iput p4, p0, Llu2;->B:I

    return-void
.end method

.method public static d(Lxb3;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcc3;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrb3;
        }
    .end annotation

    const-string v0, "lfwxCikgKRS/3gKfkoUyNEjZZV5ouOhtUGpQArp1tBL83YvbBjdmOrPbDfk4thOw"

    const-string v1, "FwADM1OE4wsGtF3KnNBhhswK7xd9YG/+Ecy8O6QJ548="

    .line 1
    invoke-virtual {p0, v0, v1}, Lxb3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcc3;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcc3;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    :goto_0
    new-instance p1, Lrb3;

    invoke-direct {p1, p0}, Lrb3;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :cond_0
    new-instance p0, Lrb3;

    invoke-direct {p0}, Lrb3;-><init>()V

    throw p0
.end method

.method public static g(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lis2;->x:Lxb3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lis2;->x:Lxb3;

    .line 3
    iget-object v0, v0, Lxb3;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :try_start_0
    sget-object v1, Ly40;->x1:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 10
    sget-object v0, Llu2;->G:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 11
    sget v3, Lbc3;->a:I

    .line 12
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 13
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    sget-object v5, Lt43;->a:Ls43;

    invoke-virtual {v5, p0, v4}, Ls43;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 15
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "class methods got exception: %s"

    .line 16
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static h(Landroid/content/Context;Z)Lxb3;
    .locals 9

    .line 1
    sget-object v0, Lis2;->x:Lxb3;

    if-nez v0, :cond_4

    .line 2
    sget-object v0, Llu2;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lis2;->x:Lxb3;

    if-nez v1, :cond_3

    const-string v1, "pPUxBYyr76piI8i0eva67UkfRUCvzuFdlUmAk6Mi2Tw="

    const-string v2, "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"

    .line 4
    invoke-static {p0, v1, v2, p1}, Lxb3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lxb3;

    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lxb3;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6
    :try_start_1
    sget-object v1, Ly40;->D1:Lo40;

    .line 7
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    const-string v1, "4ioREl2wGHUH3L1Ffod4L799Wcu9qX0THPnnrMniz0uOTIixizwJO+JKyjfP+vUT"

    const-string v2, "/fmVllZVlSra7BEtwv3jJDV2EycO3hpoom0fb/ewpTo="

    new-array v3, p1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {p0, v1, v2, v3}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :cond_0
    const-string v1, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W"

    const-string v2, "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88="

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 11
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 12
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "gJKllQmV3HaFcbQw4SvdFIyU88o/Iz8QPU88MUHpH/cMRGA4rwBMtKZ7yvGZqe2w"

    const-string v2, "IsN4QtI63RUGhEY0OHAj3L5LMiPiIcQy7DUHX11JPsM="

    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 14
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "ZeSpfjcZpmSP/nSxbdfatBT/f0oxz52MVtHRzi5qeL9M0cEmYANjyCo2GJEqlLAe"

    const-string v2, "tHnUzqasuVwaFm4NhdxFyrorWGVbL0dubf0ImCzGdDo="

    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 16
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "YHD5BirQzdkE5if+sD2r0rfETSZ6WSmQKPdEQd9Qw6mBiMvS/otq/ei5Qd0pjZKF"

    const-string v2, "8ms6nYGjyDm7enrrZkVPhrW5D5Aa00lzRuJhbfe4o6Y="

    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 18
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "WoeYtKNVp7/my2OqLQYdCryScW4WgM03+WxwIpt/QK3TT9c+2OVHLmYil2rjd+c0"

    const-string v2, "0sxd8lYhiX7BbEtj6ePh8tETgEGgYhuhPUPRCL6z5Mc="

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 20
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "bcFL/fJRu718mghIiNBYOTkzpNdABDIKLmy2PMpeL8rVZds+8PYBgDtD/FOkk+Qn"

    const-string v2, "KF22wbrdoujVmpgKzzFMNWv1Sgu2BtAcwHlIlcKqeoQ="

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 21
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, p1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    .line 22
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "RzBw9vRSipbuNeBXQk6zOcUPzKaUAlHYEe6HKwHxvOmqaq+lnMrAsjt5uZMfu/9V"

    const-string v2, "Zp1hLvZBTzC0Kby/AmmZAiomzdB0RWOtOcAG/vZDLOo="

    new-array v5, v3, [Ljava/lang/Class;

    .line 23
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, p1

    .line 24
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "bgzWc4NkWh5l+3z+Scn9JRf8tvZKELWsFHxNuoBpVWWDFXQul5MgQvQGjs6ontwq"

    const-string v2, "9PvGi1I6oPT6py3nE4wN7vzKxRflPFCaGOQk2QIolFM="

    new-array v5, v3, [Ljava/lang/Class;

    .line 25
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, p1

    .line 26
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "lfwxCikgKRS/3gKfkoUyNEjZZV5ouOhtUGpQArp1tBL83YvbBjdmOrPbDfk4thOw"

    const-string v2, "FwADM1OE4wsGtF3KnNBhhswK7xd9YG/+Ecy8O6QJ548="

    new-array v5, v4, [Ljava/lang/Class;

    .line 27
    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, p1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v3

    .line 28
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "nKRODpQwk1/u0jbg4P+fJm0/O705OvQg3WLfYMM5UGiaOBIXTYIZZbl7bIHI2Uc6"

    const-string v2, "SndVllQ+BwO2WO6R9COpQrcAJb5R8oYkafQKO4ndcDE="

    new-array v5, v4, [Ljava/lang/Class;

    .line 29
    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, p1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v3

    .line 30
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "7SROkfIwreMoJDxcBNyShI4+omv0gpC93jAEJAB0Cp1+TJv08W9zzrlitnVlVtyE"

    const-string v2, "PA4PrzgAsNF7Ft84Q9aA2NAVB0ZSrLRUy9kIe99kZ+A="

    new-array v5, p1, [Ljava/lang/Class;

    .line 31
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "bTKtbGas2IMTrNQhtsgH676EZ8f70MR8Btx9V0rnoWs7O2xUsN7xxTrvCp3FFoAI"

    const-string v2, "ZbhNt5TbPIqTtrM8WJ4EO6M5DAjmR8dymOjWsbkjOAo="

    new-array v5, p1, [Ljava/lang/Class;

    .line 32
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "8+rg+aLqDBUXsEel20b1uGHd+3Hh6tGYqqSFB4VvkBhzY7p60G8A1xW9wm+KzchY"

    const-string v2, "BADZ50doZotXAaJSFpMNGG6fbPEzn518zx6cD7Ag4pw="

    new-array v5, p1, [Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "2C3NpzH9pjkOAWq06/D6hXDvdYy6+YP5xU7Zrx2osn3UFWE9mdEFjb377efmMLAD"

    const-string v2, "ivi0cl9FZyor0X5V8aZiXwHM2tI0wjAgN38MpUIbEM4="

    new-array v5, p1, [Ljava/lang/Class;

    .line 34
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "G/D4j/d44p7YYYTTjwAmFmC4Lv6aW8ehDg3SGCOAXIgLTOBs7f36PiGiqG2jmrtI"

    const-string v2, "DHRu15FeABNs0IYGHmt2Nx2Uj9S2iXjSH+gmOisUqjk="

    new-array v5, p1, [Ljava/lang/Class;

    .line 35
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "8JPLxd6tu5Dxk7YQhy6pLrdJ7U48mCx3YXYAkcTAyGWIr2n9hVx/0TuNBFV24pk7"

    const-string v2, "IbJINjbVMz+E56QiNgMBx5ozLgoLc9CMce2MxwCvlI4="

    new-array v5, p1, [Ljava/lang/Class;

    .line 36
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "fM+2CHmQ9w/8Zfq//jQXibLXoZEfFKuuxfO+/CXvUvI5oWQeLhPgA4FeAXGut4Yd"

    const-string v2, "NrkBarwcVBd/q/A0vftixkZykO/w4h/WpommgyrFhAI="

    new-array v5, v4, [Ljava/lang/Class;

    .line 37
    const-class v7, Landroid/content/Context;

    aput-object v7, v5, p1

    aput-object v6, v5, v3

    .line 38
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "onh/v42MEDg+hpR8jTVSmR0U4e33Tfr/8wfuUE8r8BbW/u5tV6JhAheS3O6Nnuwo"

    const-string v2, "tz6CxNASyu594z8vikgJfY85KDDIBG4d4PGw5QUXn1I="

    new-array v5, v3, [Ljava/lang/Class;

    .line 39
    const-class v7, [Ljava/lang/StackTraceElement;

    aput-object v7, v5, p1

    .line 40
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "aEuDRglPx7LSdp6k/3JXxxn1/3MYff/tV8SgkQMoGR3frSx/m+sUUCft422qLNsR"

    const-string v2, "MrccU4540rAa+pVONM0wRbj04+6sIY87FG+DhugCBxE="

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    .line 41
    const-class v8, Landroid/view/View;

    aput-object v8, v7, p1

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v7, v3

    aput-object v6, v7, v4

    .line 42
    invoke-virtual {p0, v1, v2, v7}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "yDUOEOd3qLo5ZpKjCYEOj8+U14MvGaP5ELj9yMB433gvepEHK9ar+gaRAmAXdj2V"

    const-string v2, "09eRUZdqb759OOWjinfRK6uvvd7/10EvxFxPpHHu4uM="

    new-array v7, v4, [Ljava/lang/Class;

    .line 43
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, p1

    aput-object v6, v7, v3

    .line 44
    invoke-virtual {p0, v1, v2, v7}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "7mdpcltNaXXo8PfCdJoZshDRPEbPZzmjvlXGv7n3Rk3Lhd78nQfgxvBjm8VI5YqG"

    const-string v2, "LFWc43IQVhg6kajraXYrztUvi4AV9mJ/POEfBDCkHX4="

    new-array v5, v5, [Ljava/lang/Class;

    .line 45
    const-class v7, Landroid/view/View;

    aput-object v7, v5, p1

    const-class v7, Landroid/app/Activity;

    aput-object v7, v5, v3

    aput-object v6, v5, v4

    .line 46
    invoke-virtual {p0, v1, v2, v5}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string v1, "X8RYSukUkiBBA37qo0y73zQXgnKdpbx8hnbQrO584FUp1d/0eyzlUR7R2ZVJY2yw"

    const-string v2, "FOxGvlJRk5yfyuD6ZKFJF4/qY6F6C/jDGa7kLWOWJOI="

    new-array v4, v3, [Ljava/lang/Class;

    .line 47
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p1

    .line 48
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    sget-object v1, Ly40;->I1:Lo40;

    .line 50
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 51
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    const-string v1, "vXDw7mi7++/werQkXoyQkiddmcKSHn4wEPU8PyTnTBKJmFSkoENA1vNHansCZXf1"

    const-string v2, "Esmj3T0OuqrkXXWgXbOxi9xelHBIVARoM2JAbDgAT8M="

    new-array v4, v3, [Ljava/lang/Class;

    .line 53
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 54
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :cond_1
    const-string v1, "uCErn1apJBfRh2iovPj3L9wgOqsjkPIPk0ayI74Wy9xNH9CyrbkV4lnWRd6Hc5PV"

    const-string v2, "u5rvt1ppUTOXVpFKEQThg3fX6UggEWdcGs+bsG9WDTM="

    new-array v4, v3, [Ljava/lang/Class;

    .line 55
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, p1

    .line 56
    invoke-virtual {p0, v1, v2, v4}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :try_start_5
    sget-object v1, Ly40;->J1:Lo40;

    .line 58
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 59
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    const-string v1, "0QGjuCbUWIZkN3tG+CI717rLmhJLlYCwyhyOwbggAipaCtLtcObh5WHG/hPEVthQ"

    const-string v2, "MPfbeX0zPTuqt3ds7an3S8V3GJD0pTLwQU6iNA3ad6g="

    new-array v3, v3, [Ljava/lang/Class;

    .line 61
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, p1

    .line 62
    invoke-virtual {p0, v1, v2, v3}, Lxb3;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 63
    :cond_2
    sput-object p0, Lis2;->x:Lxb3;

    .line 64
    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    .line 65
    :cond_4
    :goto_3
    sget-object p0, Lis2;->x:Lxb3;

    return-object p0
.end method

.method public static j(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Ly40;->p1:Lo40;

    .line 2
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v2, p0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final c([Ljava/lang/StackTraceElement;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrb3;
        }
    .end annotation

    .line 1
    sget-object v0, Lis2;->x:Lxb3;

    const-string v1, "onh/v42MEDg+hpR8jTVSmR0U4e33Tfr/8wfuUE8r8BbW/u5tV6JhAheS3O6Nnuwo"

    const-string v2, "tz6CxNASyu594z8vikgJfY85KDDIBG4d4PGw5QUXn1I="

    .line 2
    invoke-virtual {v0, v1, v2}, Lxb3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ltb3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 4
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ltb3;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, v1, Ltb3;->b:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    new-instance v0, Lrb3;

    invoke-direct {v0, p1}, Lrb3;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    new-instance p1, Lrb3;

    invoke-direct {p1}, Lrb3;-><init>()V

    throw p1
.end method

.method public e(Lxb3;Landroid/content/Context;Lgl1$b;Lfh1;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb3;",
            "Landroid/content/Context;",
            "Lgl1$b;",
            "Lfh1;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lxb3;->h()I

    move-result v8

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-boolean v0, p1, Lxb3;->p:Z

    if-nez v0, :cond_0

    const/16 p1, 0x4000

    int-to-long p1, p1

    .line 4
    invoke-virtual {p3, p1, p2}, Lgl1$b;->r(J)Lgl1$b;

    return-object v9

    .line 5
    :cond_0
    new-instance v10, Ljc3;

    const-string v2, "fM+2CHmQ9w/8Zfq//jQXibLXoZEfFKuuxfO+/CXvUvI5oWQeLhPgA4FeAXGut4Yd"

    const-string v3, "NrkBarwcVBd/q/A0vftixkZykO/w4h/WpommgyrFhAI="

    move-object v0, v10

    move-object v1, p1

    move-object v4, p3

    move v5, v8

    move-object v6, p2

    move-object v7, p4

    .line 6
    invoke-direct/range {v0 .. v7}, Ljc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/content/Context;Lfh1;)V

    .line 7
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p4, Lnc3;

    .line 9
    sget-wide v5, Llu2;->I:J

    const-string v2, "7SROkfIwreMoJDxcBNyShI4+omv0gpC93jAEJAB0Cp1+TJv08W9zzrlitnVlVtyE"

    const-string v3, "PA4PrzgAsNF7Ft84Q9aA2NAVB0ZSrLRUy9kIe99kZ+A="

    move-object v0, p4

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lnc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;JI)V

    .line 10
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p4, Lxc3;

    const-string v2, "8+rg+aLqDBUXsEel20b1uGHd+3Hh6tGYqqSFB4VvkBhzY7p60G8A1xW9wm+KzchY"

    const-string v3, "BADZ50doZotXAaJSFpMNGG6fbPEzn518zx6cD7Ag4pw="

    move-object v0, p4

    move v5, v8

    .line 12
    invoke-direct/range {v0 .. v5}, Lxc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 13
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p4, Lyc3;

    const-string v2, "ZeSpfjcZpmSP/nSxbdfatBT/f0oxz52MVtHRzi5qeL9M0cEmYANjyCo2GJEqlLAe"

    const-string v3, "tHnUzqasuVwaFm4NhdxFyrorWGVbL0dubf0ImCzGdDo="

    move-object v0, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lyc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 16
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance p4, Lfd3;

    const-string v2, "bTKtbGas2IMTrNQhtsgH676EZ8f70MR8Btx9V0rnoWs7O2xUsN7xxTrvCp3FFoAI"

    const-string v3, "ZbhNt5TbPIqTtrM8WJ4EO6M5DAjmR8dymOjWsbkjOAo="

    move-object v0, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lfd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 19
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p4, Lkc3;

    const-string v2, "gJKllQmV3HaFcbQw4SvdFIyU88o/Iz8QPU88MUHpH/cMRGA4rwBMtKZ7yvGZqe2w"

    const-string v3, "IsN4QtI63RUGhEY0OHAj3L5LMiPiIcQy7DUHX11JPsM="

    move-object v0, p4

    move-object v6, p2

    .line 21
    invoke-direct/range {v0 .. v6}, Lkc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/content/Context;)V

    .line 22
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p2, Llc3;

    const-string v2, "YHD5BirQzdkE5if+sD2r0rfETSZ6WSmQKPdEQd9Qw6mBiMvS/otq/ei5Qd0pjZKF"

    const-string v3, "8ms6nYGjyDm7enrrZkVPhrW5D5Aa00lzRuJhbfe4o6Y="

    move-object v0, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Llc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 25
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance p2, Ltc3;

    const-string v2, "WoeYtKNVp7/my2OqLQYdCryScW4WgM03+WxwIpt/QK3TT9c+2OVHLmYil2rjd+c0"

    const-string v3, "0sxd8lYhiX7BbEtj6ePh8tETgEGgYhuhPUPRCL6z5Mc="

    move-object v0, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Ltc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 28
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p2, Lwc3;

    const-string v2, "bcFL/fJRu718mghIiNBYOTkzpNdABDIKLmy2PMpeL8rVZds+8PYBgDtD/FOkk+Qn"

    const-string v3, "KF22wbrdoujVmpgKzzFMNWv1Sgu2BtAcwHlIlcKqeoQ="

    move-object v0, p2

    .line 30
    invoke-direct/range {v0 .. v5}, Lwc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 31
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p2, Loc3;

    const-string v2, "2C3NpzH9pjkOAWq06/D6hXDvdYy6+YP5xU7Zrx2osn3UFWE9mdEFjb377efmMLAD"

    const-string v3, "ivi0cl9FZyor0X5V8aZiXwHM2tI0wjAgN38MpUIbEM4="

    move-object v0, p2

    .line 33
    invoke-direct/range {v0 .. v5}, Loc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 34
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance p2, Lsc3;

    const-string v2, "G/D4j/d44p7YYYTTjwAmFmC4Lv6aW8ehDg3SGCOAXIgLTOBs7f36PiGiqG2jmrtI"

    const-string v3, "DHRu15FeABNs0IYGHmt2Nx2Uj9S2iXjSH+gmOisUqjk="

    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v5}, Lsc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 37
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance p2, Led3;

    const-string v2, "RzBw9vRSipbuNeBXQk6zOcUPzKaUAlHYEe6HKwHxvOmqaq+lnMrAsjt5uZMfu/9V"

    const-string v3, "Zp1hLvZBTzC0Kby/AmmZAiomzdB0RWOtOcAG/vZDLOo="

    move-object v0, p2

    .line 39
    invoke-direct/range {v0 .. v5}, Led3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 40
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p2, Lhc3;

    const-string v2, "bgzWc4NkWh5l+3z+Scn9JRf8tvZKELWsFHxNuoBpVWWDFXQul5MgQvQGjs6ontwq"

    const-string v3, "9PvGi1I6oPT6py3nE4wN7vzKxRflPFCaGOQk2QIolFM="

    move-object v0, p2

    .line 42
    invoke-direct/range {v0 .. v5}, Lhc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 43
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Ldd3;

    const-string v2, "8JPLxd6tu5Dxk7YQhy6pLrdJ7U48mCx3YXYAkcTAyGWIr2n9hVx/0TuNBFV24pk7"

    const-string v3, "IbJINjbVMz+E56QiNgMBx5ozLgoLc9CMce2MxwCvlI4="

    move-object v0, p2

    .line 45
    invoke-direct/range {v0 .. v5}, Ldd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 46
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance p2, Lbd3;

    const-string v2, "yDUOEOd3qLo5ZpKjCYEOj8+U14MvGaP5ELj9yMB433gvepEHK9ar+gaRAmAXdj2V"

    const-string v3, "09eRUZdqb759OOWjinfRK6uvvd7/10EvxFxPpHHu4uM="

    move-object v0, p2

    .line 48
    invoke-direct/range {v0 .. v5}, Lbd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 49
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object p2, Ly40;->J1:Lo40;

    .line 51
    sget-object p4, Los3;->j:Los3;

    iget-object p4, p4, Los3;->f:Lu40;

    .line 52
    invoke-virtual {p4, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 53
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 54
    new-instance p2, Lvc3;

    const-string v2, "0QGjuCbUWIZkN3tG+CI717rLmhJLlYCwyhyOwbggAipaCtLtcObh5WHG/hPEVthQ"

    const-string v3, "MPfbeX0zPTuqt3ds7an3S8V3GJD0pTLwQU6iNA3ad6g="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, v8

    .line 55
    invoke-direct/range {v0 .. v5}, Lvc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 56
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    sget-object p2, Ly40;->I1:Lo40;

    .line 58
    sget-object p4, Los3;->j:Los3;

    iget-object p4, p4, Los3;->f:Lu40;

    .line 59
    invoke-virtual {p4, p2}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object p2

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    new-instance p2, Lzc3;

    const-string v2, "vXDw7mi7++/werQkXoyQkiddmcKSHn4wEPU8PyTnTBKJmFSkoENA1vNHansCZXf1"

    const-string v3, "Esmj3T0OuqrkXXWgXbOxi9xelHBIVARoM2JAbDgAT8M="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, v8

    .line 62
    invoke-direct/range {v0 .. v5}, Lzc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 63
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    new-instance p2, Lrc3;

    const-string v2, "uCErn1apJBfRh2iovPj3L9wgOqsjkPIPk0ayI74Wy9xNH9CyrbkV4lnWRd6Hc5PV"

    const-string v3, "u5rvt1ppUTOXVpFKEQThg3fX6UggEWdcGs+bsG9WDTM="

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, v8

    .line 65
    invoke-direct/range {v0 .. v5}, Lrc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 66
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public final f(Lxb3;Lgl1$b;Landroid/view/View;Landroid/app/Activity;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1
    sget-object v1, Lkw1;->g:Lkw1;

    sget-object v2, Lkw1;->f:Lkw1;

    iget-boolean v3, v9, Lxb3;->p:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const/16 v1, 0x4000

    int-to-long v1, v1

    .line 2
    invoke-virtual {v10, v1, v2}, Lgl1$b;->r(J)Lgl1$b;

    new-array v1, v5, [Ljava/util/concurrent/Callable;

    .line 3
    new-instance v2, Lpc3;

    invoke-direct {v2, v9, v10}, Lpc3;-><init>(Lxb3;Lgl1$b;)V

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_9

    .line 4
    :cond_0
    :try_start_0
    iget-object v3, v0, Lis2;->e:Landroid/view/MotionEvent;

    iget-object v6, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 5
    invoke-static {v9, v3, v6}, Llu2;->d(Lxb3;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcc3;

    move-result-object v3

    .line 6
    iget-object v6, v3, Lcc3;->b:Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 8
    iget-boolean v8, v10, Ls63$b;->g:Z

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 10
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 11
    :cond_1
    iget-object v8, v10, Ls63$b;->f:Ls63;

    check-cast v8, Lgl1;

    invoke-static {v8, v6, v7}, Lgl1;->l0(Lgl1;J)V

    .line 12
    :cond_2
    iget-object v6, v3, Lcc3;->c:Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 14
    iget-boolean v8, v10, Ls63$b;->g:Z

    if-eqz v8, :cond_3

    .line 15
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 16
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 17
    :cond_3
    iget-object v8, v10, Ls63$b;->f:Ls63;

    check-cast v8, Lgl1;

    invoke-static {v8, v6, v7}, Lgl1;->n0(Lgl1;J)V

    .line 18
    :cond_4
    iget-object v6, v3, Lcc3;->d:Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 19
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 20
    iget-boolean v8, v10, Ls63$b;->g:Z

    if-eqz v8, :cond_5

    .line 21
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 22
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 23
    :cond_5
    iget-object v8, v10, Ls63$b;->f:Ls63;

    check-cast v8, Lgl1;

    invoke-static {v8, v6, v7}, Lgl1;->p0(Lgl1;J)V

    .line 24
    :cond_6
    iget-boolean v6, v0, Lis2;->v:Z

    if-eqz v6, :cond_a

    .line 25
    iget-object v6, v3, Lcc3;->e:Ljava/lang/Long;

    if-eqz v6, :cond_8

    .line 26
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 27
    iget-boolean v8, v10, Ls63$b;->g:Z

    if-eqz v8, :cond_7

    .line 28
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 29
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 30
    :cond_7
    iget-object v8, v10, Ls63$b;->f:Ls63;

    check-cast v8, Lgl1;

    invoke-static {v8, v6, v7}, Lgl1;->A0(Lgl1;J)V

    .line 31
    :cond_8
    iget-object v3, v3, Lcc3;->f:Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 33
    iget-boolean v3, v10, Ls63$b;->g:Z

    if-eqz v3, :cond_9

    .line 34
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 35
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 36
    :cond_9
    iget-object v3, v10, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v6, v7}, Lgl1;->B0(Lgl1;J)V
    :try_end_0
    .catch Lrb3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 37
    :cond_a
    :goto_0
    invoke-static {}, Lgl1$e;->z()Lgl1$e$a;

    move-result-object v3

    .line 38
    iget-wide v6, v0, Lis2;->g:J

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_14

    iget-object v6, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 39
    sget v7, Lbc3;->a:I

    if-eqz v6, :cond_b

    .line 40
    iget v7, v6, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_1

    :cond_b
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_14

    .line 41
    iget-wide v13, v0, Lis2;->n:D

    invoke-static {v13, v14, v6}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    .line 42
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_c

    .line 43
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 44
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 45
    :cond_c
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->N(Lgl1$e;J)V

    .line 46
    iget v6, v0, Lis2;->s:F

    iget v7, v0, Lis2;->q:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 47
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    .line 48
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_d

    .line 49
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 50
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 51
    :cond_d
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->O(Lgl1$e;J)V

    .line 52
    iget v6, v0, Lis2;->t:F

    iget v7, v0, Lis2;->r:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 53
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    .line 54
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_e

    .line 55
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 56
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 57
    :cond_e
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->P(Lgl1$e;J)V

    .line 58
    iget v6, v0, Lis2;->q:F

    float-to-double v6, v6

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 59
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    .line 60
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_f

    .line 61
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 62
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 63
    :cond_f
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->S(Lgl1$e;J)V

    .line 64
    iget v6, v0, Lis2;->r:F

    float-to-double v6, v6

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 65
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    .line 66
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_10

    .line 67
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 68
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 69
    :cond_10
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->T(Lgl1$e;J)V

    .line 70
    iget-boolean v6, v0, Lis2;->v:Z

    if-eqz v6, :cond_14

    iget-object v6, v0, Lis2;->e:Landroid/view/MotionEvent;

    if-eqz v6, :cond_14

    .line 71
    iget v7, v0, Lis2;->q:F

    iget v13, v0, Lis2;->s:F

    sub-float/2addr v7, v13

    .line 72
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-float/2addr v6, v7

    iget-object v7, v0, Lis2;->e:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 73
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    cmp-long v13, v6, v11

    if-eqz v13, :cond_12

    .line 74
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_11

    .line 75
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 76
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 77
    :cond_11
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->Q(Lgl1$e;J)V

    .line 78
    :cond_12
    iget v6, v0, Lis2;->r:F

    iget v7, v0, Lis2;->t:F

    sub-float/2addr v6, v7

    iget-object v7, v0, Lis2;->e:Landroid/view/MotionEvent;

    .line 79
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    add-float/2addr v7, v6

    iget-object v6, v0, Lis2;->e:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v7, v6

    float-to-double v6, v7

    iget-object v13, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 80
    invoke-static {v6, v7, v13}, Lbc3;->a(DLandroid/util/DisplayMetrics;)J

    move-result-wide v6

    cmp-long v13, v6, v11

    if-eqz v13, :cond_14

    .line 81
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_13

    .line 82
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 83
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 84
    :cond_13
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v6, v7}, Lgl1$e;->R(Lgl1$e;J)V

    .line 85
    :cond_14
    :try_start_1
    iget-object v6, v0, Lis2;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0, v6}, Llu2;->i(Landroid/view/MotionEvent;)Lcc3;

    move-result-object v6

    .line 86
    iget-object v7, v6, Lcc3;->b:Ljava/lang/Long;

    if-eqz v7, :cond_16

    .line 87
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 88
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_15

    .line 89
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 90
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 91
    :cond_15
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7, v13, v14}, Lgl1$e;->x(Lgl1$e;J)V

    .line 92
    :cond_16
    iget-object v7, v6, Lcc3;->c:Ljava/lang/Long;

    if-eqz v7, :cond_18

    .line 93
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 94
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_17

    .line 95
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 96
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 97
    :cond_17
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7, v13, v14}, Lgl1$e;->B(Lgl1$e;J)V

    .line 98
    :cond_18
    iget-object v7, v6, Lcc3;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 99
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_19

    .line 100
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 101
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 102
    :cond_19
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7, v13, v14}, Lgl1$e;->J(Lgl1$e;J)V

    .line 103
    iget-boolean v7, v0, Lis2;->v:Z

    if-eqz v7, :cond_2e

    .line 104
    iget-object v7, v6, Lcc3;->f:Ljava/lang/Long;

    if-eqz v7, :cond_1b

    .line 105
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 106
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_1a

    .line 107
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 108
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 109
    :cond_1a
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7, v13, v14}, Lgl1$e;->E(Lgl1$e;J)V

    .line 110
    :cond_1b
    iget-object v7, v6, Lcc3;->e:Ljava/lang/Long;

    if-eqz v7, :cond_1d

    .line 111
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 112
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_1c

    .line 113
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 114
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 115
    :cond_1c
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7, v13, v14}, Lgl1$e;->H(Lgl1$e;J)V

    .line 116
    :cond_1d
    iget-object v7, v6, Lcc3;->g:Ljava/lang/Long;

    if-eqz v7, :cond_20

    .line 117
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v7, v13, v11

    if-eqz v7, :cond_1e

    move-object v7, v1

    goto :goto_2

    :cond_1e
    move-object v7, v2

    .line 118
    :goto_2
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_1f

    .line 119
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 120
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 121
    :cond_1f
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v7}, Lgl1$e;->y(Lgl1$e;Lkw1;)V

    .line 122
    :cond_20
    iget-wide v13, v0, Lis2;->h:J

    cmp-long v7, v13, v11

    if-lez v7, :cond_27

    .line 123
    iget-object v7, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 124
    sget v15, Lbc3;->a:I

    if-eqz v7, :cond_21

    .line 125
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_21

    const/4 v7, 0x1

    goto :goto_3

    :cond_21
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_22

    .line 126
    iget-wide v7, v0, Lis2;->m:J

    long-to-double v7, v7

    long-to-double v13, v13

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4

    :cond_22
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_24

    .line 127
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 128
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_23

    .line 129
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 130
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 131
    :cond_23
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v7, v8}, Lgl1$e;->F(Lgl1$e;J)V

    goto :goto_5

    .line 132
    :cond_24
    iget-boolean v7, v3, Ls63$b;->g:Z

    if-eqz v7, :cond_25

    .line 133
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 134
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 135
    :cond_25
    iget-object v7, v3, Ls63$b;->f:Ls63;

    check-cast v7, Lgl1$e;

    invoke-static {v7}, Lgl1$e;->G(Lgl1$e;)V

    .line 136
    :goto_5
    iget-wide v7, v0, Lis2;->l:J

    long-to-double v7, v7

    iget-wide v13, v0, Lis2;->h:J

    long-to-double v13, v13

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 137
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_26

    .line 138
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 139
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 140
    :cond_26
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v7, v8}, Lgl1$e;->I(Lgl1$e;J)V

    .line 141
    :cond_27
    iget-object v7, v6, Lcc3;->j:Ljava/lang/Long;

    if-eqz v7, :cond_29

    .line 142
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 143
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_28

    .line 144
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 145
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 146
    :cond_28
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v7, v8}, Lgl1$e;->L(Lgl1$e;J)V

    .line 147
    :cond_29
    iget-object v7, v6, Lcc3;->k:Ljava/lang/Long;

    if-eqz v7, :cond_2b

    .line 148
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 149
    iget-boolean v13, v3, Ls63$b;->g:Z

    if-eqz v13, :cond_2a

    .line 150
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 151
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 152
    :cond_2a
    iget-object v13, v3, Ls63$b;->f:Ls63;

    check-cast v13, Lgl1$e;

    invoke-static {v13, v7, v8}, Lgl1$e;->K(Lgl1$e;J)V

    .line 153
    :cond_2b
    iget-object v6, v6, Lcc3;->l:Ljava/lang/Long;

    if-eqz v6, :cond_2e

    .line 154
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v11

    if-eqz v8, :cond_2c

    goto :goto_6

    :cond_2c
    move-object v1, v2

    .line 155
    :goto_6
    iget-boolean v2, v3, Ls63$b;->g:Z

    if-eqz v2, :cond_2d

    .line 156
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 157
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 158
    :cond_2d
    iget-object v2, v3, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1$e;

    invoke-static {v2, v1}, Lgl1$e;->D(Lgl1$e;Lkw1;)V
    :try_end_1
    .catch Lrb3; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    nop

    .line 159
    :cond_2e
    :goto_7
    iget-wide v1, v0, Lis2;->k:J

    cmp-long v6, v1, v11

    if-lez v6, :cond_30

    .line 160
    iget-boolean v6, v3, Ls63$b;->g:Z

    if-eqz v6, :cond_2f

    .line 161
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 162
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 163
    :cond_2f
    iget-object v6, v3, Ls63$b;->f:Ls63;

    check-cast v6, Lgl1$e;

    invoke-static {v6, v1, v2}, Lgl1$e;->M(Lgl1$e;J)V

    .line 164
    :cond_30
    invoke-virtual {v3}, Ls63$b;->j()Le83;

    move-result-object v1

    check-cast v1, Ls63;

    check-cast v1, Lgl1$e;

    .line 165
    iget-boolean v2, v10, Ls63$b;->g:Z

    if-eqz v2, :cond_31

    .line 166
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 167
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 168
    :cond_31
    iget-object v2, v10, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2, v1}, Lgl1;->B(Lgl1;Lgl1$e;)V

    .line 169
    iget-wide v1, v0, Lis2;->g:J

    cmp-long v3, v1, v11

    if-lez v3, :cond_33

    .line 170
    iget-boolean v3, v10, Ls63$b;->g:Z

    if-eqz v3, :cond_32

    .line 171
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 172
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 173
    :cond_32
    iget-object v3, v10, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v1, v2}, Lgl1;->E0(Lgl1;J)V

    .line 174
    :cond_33
    iget-wide v1, v0, Lis2;->h:J

    cmp-long v3, v1, v11

    if-lez v3, :cond_35

    .line 175
    iget-boolean v3, v10, Ls63$b;->g:Z

    if-eqz v3, :cond_34

    .line 176
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 177
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 178
    :cond_34
    iget-object v3, v10, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v1, v2}, Lgl1;->D0(Lgl1;J)V

    .line 179
    :cond_35
    iget-wide v1, v0, Lis2;->i:J

    cmp-long v3, v1, v11

    if-lez v3, :cond_37

    .line 180
    iget-boolean v3, v10, Ls63$b;->g:Z

    if-eqz v3, :cond_36

    .line 181
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 182
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 183
    :cond_36
    iget-object v3, v10, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v1, v2}, Lgl1;->C0(Lgl1;J)V

    .line 184
    :cond_37
    iget-wide v1, v0, Lis2;->j:J

    cmp-long v3, v1, v11

    if-lez v3, :cond_39

    .line 185
    iget-boolean v3, v10, Ls63$b;->g:Z

    if-eqz v3, :cond_38

    .line 186
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 187
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 188
    :cond_38
    iget-object v3, v10, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v1, v2}, Lgl1;->F0(Lgl1;J)V

    .line 189
    :cond_39
    :try_start_2
    iget-object v1, v0, Lis2;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-lez v1, :cond_3f

    .line 190
    iget-boolean v2, v10, Ls63$b;->g:Z

    if-eqz v2, :cond_3a

    .line 191
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 192
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 193
    :cond_3a
    iget-object v2, v10, Ls63$b;->f:Ls63;

    check-cast v2, Lgl1;

    invoke-static {v2}, Lgl1;->y(Lgl1;)V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_3f

    .line 194
    sget-object v3, Lis2;->x:Lxb3;

    iget-object v5, v0, Lis2;->f:Ljava/util/LinkedList;

    .line 195
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    iget-object v6, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    .line 196
    invoke-static {v3, v5, v6}, Llu2;->d(Lxb3;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcc3;

    move-result-object v3

    .line 197
    invoke-static {}, Lgl1$e;->z()Lgl1$e$a;

    move-result-object v5

    iget-object v6, v3, Lcc3;->b:Ljava/lang/Long;

    .line 198
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 199
    iget-boolean v8, v5, Ls63$b;->g:Z

    if-eqz v8, :cond_3b

    .line 200
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 201
    iput-boolean v4, v5, Ls63$b;->g:Z

    .line 202
    :cond_3b
    iget-object v8, v5, Ls63$b;->f:Ls63;

    check-cast v8, Lgl1$e;

    invoke-static {v8, v6, v7}, Lgl1$e;->x(Lgl1$e;J)V

    .line 203
    iget-object v3, v3, Lcc3;->c:Ljava/lang/Long;

    .line 204
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 205
    iget-boolean v3, v5, Ls63$b;->g:Z

    if-eqz v3, :cond_3c

    .line 206
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 207
    iput-boolean v4, v5, Ls63$b;->g:Z

    .line 208
    :cond_3c
    iget-object v3, v5, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1$e;

    invoke-static {v3, v6, v7}, Lgl1$e;->B(Lgl1$e;J)V

    .line 209
    invoke-virtual {v5}, Ls63$b;->j()Le83;

    move-result-object v3

    check-cast v3, Ls63;

    check-cast v3, Lgl1$e;

    .line 210
    iget-boolean v5, v10, Ls63$b;->g:Z

    if-eqz v5, :cond_3d

    .line 211
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 212
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 213
    :cond_3d
    iget-object v5, v10, Ls63$b;->f:Ls63;

    check-cast v5, Lgl1;

    invoke-static {v5, v3}, Lgl1;->Z(Lgl1;Lgl1$e;)V
    :try_end_2
    .catch Lrb3; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_2
    nop

    .line 214
    iget-boolean v1, v10, Ls63$b;->g:Z

    if-eqz v1, :cond_3e

    .line 215
    invoke-virtual/range {p2 .. p2}, Ls63$b;->o()V

    .line 216
    iput-boolean v4, v10, Ls63$b;->g:Z

    .line 217
    :cond_3e
    iget-object v1, v10, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1}, Lgl1;->y(Lgl1;)V

    .line 218
    :cond_3f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v1, v9, Lxb3;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_41

    .line 220
    invoke-virtual/range {p1 .. p1}, Lxb3;->h()I

    move-result v12

    .line 221
    new-instance v1, Lpc3;

    invoke-direct {v1, v9, v10}, Lpc3;-><init>(Lxb3;Lgl1$b;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v7, Lxc3;

    const-string v3, "8+rg+aLqDBUXsEel20b1uGHd+3Hh6tGYqqSFB4VvkBhzY7p60G8A1xW9wm+KzchY"

    const-string v4, "BADZ50doZotXAaJSFpMNGG6fbPEzn518zx6cD7Ag4pw="

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move v6, v12

    .line 223
    invoke-direct/range {v1 .. v6}, Lxc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 224
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v13, Lnc3;

    .line 226
    sget-wide v6, Llu2;->I:J

    const-string v3, "7SROkfIwreMoJDxcBNyShI4+omv0gpC93jAEJAB0Cp1+TJv08W9zzrlitnVlVtyE"

    const-string v4, "PA4PrzgAsNF7Ft84Q9aA2NAVB0ZSrLRUy9kIe99kZ+A="

    move-object v1, v13

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lnc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;JI)V

    .line 227
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v7, Loc3;

    const-string v3, "2C3NpzH9pjkOAWq06/D6hXDvdYy6+YP5xU7Zrx2osn3UFWE9mdEFjb377efmMLAD"

    const-string v4, "ivi0cl9FZyor0X5V8aZiXwHM2tI0wjAgN38MpUIbEM4="

    move-object v1, v7

    move v6, v12

    .line 229
    invoke-direct/range {v1 .. v6}, Loc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 230
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v7, Ltc3;

    const-string v3, "WoeYtKNVp7/my2OqLQYdCryScW4WgM03+WxwIpt/QK3TT9c+2OVHLmYil2rjd+c0"

    const-string v4, "0sxd8lYhiX7BbEtj6ePh8tETgEGgYhuhPUPRCL6z5Mc="

    move-object v1, v7

    .line 232
    invoke-direct/range {v1 .. v6}, Ltc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 233
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v7, Lwc3;

    const-string v3, "bcFL/fJRu718mghIiNBYOTkzpNdABDIKLmy2PMpeL8rVZds+8PYBgDtD/FOkk+Qn"

    const-string v4, "KF22wbrdoujVmpgKzzFMNWv1Sgu2BtAcwHlIlcKqeoQ="

    move-object v1, v7

    .line 235
    invoke-direct/range {v1 .. v6}, Lwc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 236
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v7, Lsc3;

    const-string v3, "G/D4j/d44p7YYYTTjwAmFmC4Lv6aW8ehDg3SGCOAXIgLTOBs7f36PiGiqG2jmrtI"

    const-string v4, "DHRu15FeABNs0IYGHmt2Nx2Uj9S2iXjSH+gmOisUqjk="

    move-object v1, v7

    .line 238
    invoke-direct/range {v1 .. v6}, Lsc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 239
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v7, Llc3;

    const-string v3, "YHD5BirQzdkE5if+sD2r0rfETSZ6WSmQKPdEQd9Qw6mBiMvS/otq/ei5Qd0pjZKF"

    const-string v4, "8ms6nYGjyDm7enrrZkVPhrW5D5Aa00lzRuJhbfe4o6Y="

    move-object v1, v7

    .line 241
    invoke-direct/range {v1 .. v6}, Llc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 242
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v7, Led3;

    const-string v3, "RzBw9vRSipbuNeBXQk6zOcUPzKaUAlHYEe6HKwHxvOmqaq+lnMrAsjt5uZMfu/9V"

    const-string v4, "Zp1hLvZBTzC0Kby/AmmZAiomzdB0RWOtOcAG/vZDLOo="

    move-object v1, v7

    .line 244
    invoke-direct/range {v1 .. v6}, Led3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 245
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v7, Lhc3;

    const-string v3, "bgzWc4NkWh5l+3z+Scn9JRf8tvZKELWsFHxNuoBpVWWDFXQul5MgQvQGjs6ontwq"

    const-string v4, "9PvGi1I6oPT6py3nE4wN7vzKxRflPFCaGOQk2QIolFM="

    move-object v1, v7

    .line 247
    invoke-direct/range {v1 .. v6}, Lhc3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 248
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v7, Ldd3;

    const-string v3, "8JPLxd6tu5Dxk7YQhy6pLrdJ7U48mCx3YXYAkcTAyGWIr2n9hVx/0TuNBFV24pk7"

    const-string v4, "IbJINjbVMz+E56QiNgMBx5ozLgoLc9CMce2MxwCvlI4="

    move-object v1, v7

    .line 250
    invoke-direct/range {v1 .. v6}, Ldd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 251
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v8, Lad3;

    .line 253
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 254
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const-string v3, "onh/v42MEDg+hpR8jTVSmR0U4e33Tfr/8wfuUE8r8BbW/u5tV6JhAheS3O6Nnuwo"

    const-string v4, "tz6CxNASyu594z8vikgJfY85KDDIBG4d4PGw5QUXn1I="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lad3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I[Ljava/lang/StackTraceElement;)V

    .line 255
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v8, Lhd3;

    const-string v3, "aEuDRglPx7LSdp6k/3JXxxn1/3MYff/tV8SgkQMoGR3frSx/m+sUUCft422qLNsR"

    const-string v4, "MrccU4540rAa+pVONM0wRbj04+6sIY87FG+DhugCBxE="

    move-object v1, v8

    move-object/from16 v7, p3

    .line 257
    invoke-direct/range {v1 .. v7}, Lhd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/view/View;)V

    .line 258
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v7, Lbd3;

    const-string v3, "yDUOEOd3qLo5ZpKjCYEOj8+U14MvGaP5ELj9yMB433gvepEHK9ar+gaRAmAXdj2V"

    const-string v4, "09eRUZdqb759OOWjinfRK6uvvd7/10EvxFxPpHHu4uM="

    move-object v1, v7

    .line 260
    invoke-direct/range {v1 .. v6}, Lbd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V

    .line 261
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Ly40;->y1:Lo40;

    .line 263
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 264
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 266
    new-instance v13, Lic3;

    const-string v3, "7mdpcltNaXXo8PfCdJoZshDRPEbPZzmjvlXGv7n3Rk3Lhd78nQfgxvBjm8VI5YqG"

    const-string v4, "LFWc43IQVhg6kajraXYrztUvi4AV9mJ/POEfBDCkHX4="

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move v6, v12

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 267
    invoke-direct/range {v1 .. v8}, Lic3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILandroid/view/View;Landroid/app/Activity;)V

    .line 268
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    if-eqz p5, :cond_41

    .line 269
    sget-object v1, Ly40;->A1:Lo40;

    .line 270
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 271
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 273
    new-instance v8, Lcd3;

    .line 274
    iget-object v7, v0, Llu2;->A:Ldc3;

    const-string v3, "X8RYSukUkiBBA37qo0y73zQXgnKdpbx8hnbQrO584FUp1d/0eyzlUR7R2ZVJY2yw"

    const-string v4, "FOxGvlJRk5yfyuD6ZKFJF4/qY6F6C/jDGa7kLWOWJOI="

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move v6, v12

    invoke-direct/range {v1 .. v7}, Lcd3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;ILdc3;)V

    .line 275
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    move-object v1, v11

    .line 276
    :goto_9
    invoke-static {v1}, Llu2;->g(Ljava/util/List;)V

    return-void
.end method

.method public final i(Landroid/view/MotionEvent;)Lcc3;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrb3;
        }
    .end annotation

    .line 1
    sget-object v0, Lis2;->x:Lxb3;

    const-string v1, "nKRODpQwk1/u0jbg4P+fJm0/O705OvQg3WLfYMM5UGiaOBIXTYIZZbl7bIHI2Uc6"

    const-string v2, "SndVllQ+BwO2WO6R9COpQrcAJb5R8oYkafQKO4ndcDE="

    .line 2
    invoke-virtual {v0, v1, v2}, Lxb3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Lcc3;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    iget-object v4, p0, Lis2;->w:Landroid/util/DisplayMetrics;

    aput-object v4, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lcc3;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    new-instance v0, Lrb3;

    invoke-direct {v0, p1}, Lrb3;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    new-instance p1, Lrb3;

    invoke-direct {p1}, Lrb3;-><init>()V

    throw p1
.end method

.method public final zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Llu2;->B:I

    invoke-static {v0}, Llu2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lkv2;

    invoke-direct {v1, p1, p2, p3}, Lkv2;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 3
    invoke-virtual/range {v2 .. v7}, Lis2;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 4
    iget v0, p0, Llu2;->B:I

    invoke-static {v0}, Llu2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ley2;

    invoke-direct {v1, p1, p2, p3, p4}, Ley2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 6
    invoke-virtual/range {v2 .. v7}, Lis2;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 43
    iget v4, v0, Llu2;->B:I

    invoke-static {v4}, Llu2;->j(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    sget-object v4, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Le03;

    invoke-direct {v5, v3, v1, v2}, Le03;-><init>(III)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    iget-object v4, v0, Lis2;->e:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2

    .line 46
    sget-object v4, Ly40;->u1:Lo40;

    .line 47
    sget-object v5, Los3;->j:Los3;

    iget-object v5, v5, Los3;->f:Lu40;

    .line 48
    invoke-virtual {v5, v4}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-virtual/range {p0 .. p0}, Lis2;->b()V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, v0, Lis2;->e:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 52
    :cond_2
    :goto_0
    iget-object v4, v0, Lis2;->w:Landroid/util/DisplayMetrics;

    if-eqz v4, :cond_3

    const-wide/16 v5, 0x0

    int-to-long v7, v3

    const/4 v9, 0x1

    int-to-float v1, v1

    .line 53
    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v1, v3

    int-to-float v1, v2

    mul-float v11, v1, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lis2;->e:Landroid/view/MotionEvent;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 54
    iput-object v1, v0, Lis2;->e:Landroid/view/MotionEvent;

    :goto_1
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Lis2;->v:Z

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .locals 14

    .line 7
    iget v0, p0, Llu2;->B:I

    invoke-static {v0}, Llu2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lex2;

    invoke-direct {v1, p1}, Lex2;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lis2;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lis2;->b()V

    .line 11
    iput-boolean v1, p0, Lis2;->u:Z

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    .line 15
    iget-wide v8, p0, Lis2;->o:D

    sub-double v8, v4, v8

    .line 16
    iget-wide v10, p0, Lis2;->p:D

    sub-double v10, v6, v10

    .line 17
    iget-wide v12, p0, Lis2;->n:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v8, v12

    iput-wide v8, p0, Lis2;->n:D

    .line 18
    iput-wide v4, p0, Lis2;->o:D

    .line 19
    iput-wide v6, p0, Lis2;->p:D

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    .line 20
    iput-wide v4, p0, Lis2;->n:D

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lis2;->o:D

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lis2;->p:D

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_2

    .line 24
    :cond_4
    iget-wide v0, p0, Lis2;->j:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lis2;->j:J

    goto/16 :goto_2

    .line 25
    :cond_5
    iget-wide v4, p0, Lis2;->h:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lis2;->h:J

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Llu2;->i(Landroid/view/MotionEvent;)Lcc3;

    move-result-object p1

    .line 27
    iget-object v0, p1, Lcc3;->e:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcc3;->h:Ljava/lang/Long;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    .line 28
    iget-wide v4, p0, Lis2;->l:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcc3;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v6, v4

    iput-wide v6, p0, Lis2;->l:J

    .line 29
    :cond_7
    iget-object v0, p0, Lis2;->w:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcc3;->f:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcc3;->i:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_c

    .line 30
    iget-wide v0, p0, Lis2;->m:J

    iget-object v2, p1, Lcc3;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcc3;->i:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lis2;->m:J
    :try_end_0
    .catch Lrb3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 31
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lis2;->e:Landroid/view/MotionEvent;

    .line 32
    iget-object v0, p0, Lis2;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p1, p0, Lis2;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_a

    .line 34
    iget-object p1, p0, Lis2;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 35
    :cond_a
    iget-wide v0, p0, Lis2;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lis2;->i:J

    .line 36
    :try_start_1
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Llu2;->c([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lis2;->k:J
    :try_end_1
    .catch Lrb3; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 37
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lis2;->q:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lis2;->r:F

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lis2;->s:F

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lis2;->t:F

    .line 41
    iget-wide v0, p0, Lis2;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lis2;->g:J

    .line 42
    :catch_0
    :cond_c
    :goto_2
    iput-boolean v3, p0, Lis2;->v:Z

    return-void
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Llu2;->B:I

    invoke-static {v0}, Llu2;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Llu2;->D:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgw2;

    invoke-direct {v1, p1}, Lgw2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    sget v0, Lbc3;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-virtual/range {v1 .. v6}, Lis2;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Landroid/view/View;)V
    .locals 3

    .line 6
    sget-object v0, Ly40;->A1:Lo40;

    .line 7
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Llu2;->A:Ldc3;

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lis2;->x:Lxb3;

    .line 12
    new-instance v1, Ldc3;

    .line 13
    iget-object v2, v0, Lxb3;->a:Landroid/content/Context;

    .line 14
    iget-object v0, v0, Lxb3;->q:Lcom/google/android/gms/internal/ads/zzfa;

    .line 15
    invoke-direct {v1, v2, v0}, Ldc3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 16
    iput-object v1, p0, Llu2;->A:Ldc3;

    .line 17
    :cond_1
    iget-object v0, p0, Llu2;->A:Ldc3;

    invoke-virtual {v0, p1}, Ldc3;->e(Landroid/view/View;)V

    return-void
.end method
