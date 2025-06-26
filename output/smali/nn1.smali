.class public final Lnn1;
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
    new-instance v0, Lnn1;

    invoke-direct {v0}, Lnn1;-><init>()V

    sput-object v0, Lnn1;->a:Ly63;

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
    sget-object p1, Lgl1$a;->l:Lgl1$a;

    goto :goto_0

    .line 2
    :pswitch_1
    sget-object p1, Lgl1$a;->k:Lgl1$a;

    goto :goto_0

    .line 3
    :pswitch_2
    sget-object p1, Lgl1$a;->j:Lgl1$a;

    goto :goto_0

    .line 4
    :pswitch_3
    sget-object p1, Lgl1$a;->i:Lgl1$a;

    goto :goto_0

    .line 5
    :pswitch_4
    sget-object p1, Lgl1$a;->h:Lgl1$a;

    goto :goto_0

    .line 6
    :pswitch_5
    sget-object p1, Lgl1$a;->g:Lgl1$a;

    goto :goto_0

    .line 7
    :pswitch_6
    sget-object p1, Lgl1$a;->f:Lgl1$a;

    :goto_0
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
