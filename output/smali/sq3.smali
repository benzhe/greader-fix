.class public final Lsq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly63;


# static fields
.field public static final a:Ly63;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsq3;

    invoke-direct {v0}, Lsq3;-><init>()V

    sput-object v0, Lsq3;->a:Ly63;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object p1, Llp3$a;->q:Llp3$a;

    goto :goto_0

    .line 2
    :pswitch_1
    sget-object p1, Llp3$a;->p:Llp3$a;

    goto :goto_0

    .line 3
    :pswitch_2
    sget-object p1, Llp3$a;->o:Llp3$a;

    goto :goto_0

    .line 4
    :pswitch_3
    sget-object p1, Llp3$a;->n:Llp3$a;

    goto :goto_0

    .line 5
    :pswitch_4
    sget-object p1, Llp3$a;->m:Llp3$a;

    goto :goto_0

    .line 6
    :pswitch_5
    sget-object p1, Llp3$a;->l:Llp3$a;

    goto :goto_0

    .line 7
    :pswitch_6
    sget-object p1, Llp3$a;->k:Llp3$a;

    goto :goto_0

    .line 8
    :pswitch_7
    sget-object p1, Llp3$a;->j:Llp3$a;

    goto :goto_0

    .line 9
    :pswitch_8
    sget-object p1, Llp3$a;->i:Llp3$a;

    goto :goto_0

    .line 10
    :pswitch_9
    sget-object p1, Llp3$a;->h:Llp3$a;

    goto :goto_0

    .line 11
    :pswitch_a
    sget-object p1, Llp3$a;->g:Llp3$a;

    goto :goto_0

    .line 12
    :pswitch_b
    sget-object p1, Llp3$a;->f:Llp3$a;

    :goto_0
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
