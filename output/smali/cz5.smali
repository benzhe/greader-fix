.class public final Lcz5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz5$a;,
        Lcz5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lcz5;",
        "Lcz5$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BANNER_FIELD_NUMBER:I = 0x1

.field public static final CARD_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcz5;

.field public static final IMAGE_ONLY_FIELD_NUMBER:I = 0x3

.field public static final MODAL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lcz5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private messageDetailsCase_:I

.field private messageDetails_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcz5;

    invoke-direct {v0}, Lcz5;-><init>()V

    .line 2
    sput-object v0, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    .line 3
    const-class v1, Lcz5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcz5;->messageDetailsCase_:I

    return-void
.end method

.method public static synthetic B()Lcz5;
    .locals 1

    .line 1
    sget-object v0, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    return-object v0
.end method

.method public static E()Lcz5;
    .locals 1

    .line 1
    sget-object v0, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    return-object v0
.end method


# virtual methods
.method public C()Lzy5;
    .locals 2

    .line 1
    iget v0, p0, Lcz5;->messageDetailsCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcz5;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lzy5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lzy5;->F()Lzy5;

    move-result-object v0

    return-object v0
.end method

.method public D()Lbz5;
    .locals 2

    .line 1
    iget v0, p0, Lcz5;->messageDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcz5;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lbz5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lbz5;->E()Lbz5;

    move-result-object v0

    return-object v0
.end method

.method public F()Ldz5;
    .locals 2

    .line 1
    iget v0, p0, Lcz5;->messageDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcz5;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Ldz5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ldz5;->D()Ldz5;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcz5$b;
    .locals 2

    .line 1
    iget v0, p0, Lcz5;->messageDetailsCase_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcz5$b;->h:Lcz5$b;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcz5$b;->g:Lcz5$b;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcz5$b;->f:Lcz5$b;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcz5$b;->e:Lcz5$b;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcz5$b;->i:Lcz5$b;

    :goto_0
    return-object v0
.end method

.method public H()Lez5;
    .locals 2

    .line 1
    iget v0, p0, Lcz5;->messageDetailsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcz5;->messageDetails_:Ljava/lang/Object;

    check-cast v0, Lez5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lez5;->G()Lez5;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcz5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcz5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcz5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lcz5;->PARSER:Lik6;

    .line 8
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcz5$a;

    invoke-direct {p1, p3}, Lcz5$a;-><init>(Lxy5;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcz5;

    invoke-direct {p1}, Lcz5;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageDetails_"

    aput-object v0, p1, p3

    const-string p3, "messageDetailsCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lzy5;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lez5;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Ldz5;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lbz5;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000"

    .line 13
    sget-object p3, Lcz5;->DEFAULT_INSTANCE:Lcz5;

    .line 14
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 15
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

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
