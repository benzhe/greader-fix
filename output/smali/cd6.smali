.class public final Lcd6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd6$b;,
        Lcd6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lcd6;",
        "Lcd6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcd6;

.field public static final DELETE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lcd6;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_FIELD_NUMBER:I = 0x6

.field public static final UPDATE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x3

.field public static final VERIFY_FIELD_NUMBER:I = 0x5


# instance fields
.field private currentDocument_:Lxc6;

.field private operationCase_:I

.field private operation_:Ljava/lang/Object;

.field private updateMask_:Lpc6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcd6;

    invoke-direct {v0}, Lcd6;-><init>()V

    .line 2
    sput-object v0, Lcd6;->DEFAULT_INSTANCE:Lcd6;

    .line 3
    const-class v1, Lcd6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcd6;->operationCase_:I

    return-void
.end method

.method public static synthetic B()Lcd6;
    .locals 1

    .line 1
    sget-object v0, Lcd6;->DEFAULT_INSTANCE:Lcd6;

    return-object v0
.end method

.method public static C(Lcd6;Lrc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcd6;->operation_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcd6;->operationCase_:I

    return-void
.end method

.method public static D(Lcd6;Lpc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcd6;->updateMask_:Lpc6;

    return-void
.end method

.method public static E(Lcd6;Lxc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcd6;->currentDocument_:Lxc6;

    return-void
.end method

.method public static F(Lcd6;Lmc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcd6;->operation_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcd6;->operationCase_:I

    return-void
.end method

.method public static G(Lcd6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcd6;->operationCase_:I

    .line 4
    iput-object p1, p0, Lcd6;->operation_:Ljava/lang/Object;

    return-void
.end method

.method public static H(Lcd6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcd6;->operationCase_:I

    .line 4
    iput-object p1, p0, Lcd6;->operation_:Ljava/lang/Object;

    return-void
.end method

.method public static R()Lcd6$b;
    .locals 1

    .line 1
    sget-object v0, Lcd6;->DEFAULT_INSTANCE:Lcd6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lcd6$b;

    return-object v0
.end method


# virtual methods
.method public I()Lxc6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcd6;->currentDocument_:Lxc6;

    if-nez v0, :cond_0

    invoke-static {}, Lxc6;->F()Lxc6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcd6;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcd6;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public K()Lcd6$c;
    .locals 2

    .line 1
    iget v0, p0, Lcd6;->operationCase_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcd6$c;->h:Lcd6$c;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcd6$c;->g:Lcd6$c;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcd6$c;->f:Lcd6$c;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcd6$c;->e:Lcd6$c;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcd6$c;->i:Lcd6$c;

    :goto_0
    return-object v0
.end method

.method public L()Lrc6;
    .locals 2

    .line 1
    iget v0, p0, Lcd6;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcd6;->operation_:Ljava/lang/Object;

    check-cast v0, Lrc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lrc6;->E()Lrc6;

    move-result-object v0

    return-object v0
.end method

.method public M()Lmc6;
    .locals 2

    .line 1
    iget v0, p0, Lcd6;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcd6;->operation_:Ljava/lang/Object;

    check-cast v0, Lmc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lmc6;->F()Lmc6;

    move-result-object v0

    return-object v0
.end method

.method public N()Lpc6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcd6;->updateMask_:Lpc6;

    if-nez v0, :cond_0

    invoke-static {}, Lpc6;->D()Lpc6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcd6;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcd6;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcd6;->currentDocument_:Lxc6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcd6;->updateMask_:Lpc6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    sget-object p1, Lcd6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcd6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcd6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lcd6;->DEFAULT_INSTANCE:Lcd6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lcd6;->PARSER:Lik6;

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
    sget-object p1, Lcd6;->DEFAULT_INSTANCE:Lcd6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcd6$b;

    invoke-direct {p1, p3}, Lcd6$b;-><init>(Lcd6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcd6;

    invoke-direct {p1}, Lcd6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operation_"

    aput-object v0, p1, p3

    const-string p3, "operationCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lmc6;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "updateMask_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "currentDocument_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lrc6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\t\u0004\t\u0005\u023b\u0000\u0006<\u0000"

    .line 13
    sget-object p3, Lcd6;->DEFAULT_INSTANCE:Lcd6;

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
