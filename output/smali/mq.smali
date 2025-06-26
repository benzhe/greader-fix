.class public abstract Lmq;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmq$e;,
        Lmq$h;,
        Lmq$k;,
        Lmq$i;,
        Lmq$b;,
        Lmq$f;,
        Lmq$c;,
        Lmq$d;,
        Lmq$a;,
        Lmq$g;,
        Lmq$j;
    }
.end annotation


# direct methods
.method public constructor <init>(Lin;Lgm7;)V
    .locals 1

    const-string p2, "Billing error, code "

    .line 1
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget v0, p1, Lin;->a:I

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p1, Lin;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lin;)Lmq;
    .locals 1

    const-string v0, "result"

    invoke-static {p0, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lin;->a:I

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance v0, Lmq$j;

    invoke-direct {v0, p0}, Lmq$j;-><init>(Lin;)V

    goto :goto_0

    .line 3
    :pswitch_1
    new-instance v0, Lmq$g;

    invoke-direct {v0, p0}, Lmq$g;-><init>(Lin;)V

    goto :goto_0

    .line 4
    :pswitch_2
    new-instance v0, Lmq$a;

    invoke-direct {v0, p0}, Lmq$a;-><init>(Lin;)V

    goto :goto_0

    .line 5
    :pswitch_3
    new-instance v0, Lmq$d;

    invoke-direct {v0, p0}, Lmq$d;-><init>(Lin;)V

    goto :goto_0

    .line 6
    :pswitch_4
    new-instance v0, Lmq$c;

    invoke-direct {v0, p0}, Lmq$c;-><init>(Lin;)V

    goto :goto_0

    .line 7
    :pswitch_5
    new-instance v0, Lmq$f;

    invoke-direct {v0, p0}, Lmq$f;-><init>(Lin;)V

    goto :goto_0

    .line 8
    :pswitch_6
    new-instance v0, Lmq$b;

    invoke-direct {v0, p0}, Lmq$b;-><init>(Lin;)V

    goto :goto_0

    .line 9
    :pswitch_7
    new-instance v0, Lmq$i;

    invoke-direct {v0, p0}, Lmq$i;-><init>(Lin;)V

    goto :goto_0

    .line 10
    :pswitch_8
    new-instance v0, Lmq$k;

    invoke-direct {v0, p0}, Lmq$k;-><init>(Lin;)V

    goto :goto_0

    .line 11
    :pswitch_9
    new-instance v0, Lmq$h;

    invoke-direct {v0, p0}, Lmq$h;-><init>(Lin;)V

    goto :goto_0

    .line 12
    :pswitch_a
    new-instance v0, Lmq$e;

    invoke-direct {v0, p0}, Lmq$e;-><init>(Lin;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
