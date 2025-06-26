.class public final Lky5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lky5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lky5;",
        "Lky5$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lky5;

.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final FIAM_TRIGGER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lky5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conditionCase_:I

.field private condition_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lky5;

    invoke-direct {v0}, Lky5;-><init>()V

    .line 2
    sput-object v0, Lky5;->DEFAULT_INSTANCE:Lky5;

    .line 3
    const-class v1, Lky5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lky5;->conditionCase_:I

    return-void
.end method

.method public static synthetic B()Lky5;
    .locals 1

    .line 1
    sget-object v0, Lky5;->DEFAULT_INSTANCE:Lky5;

    return-object v0
.end method


# virtual methods
.method public C()Lgy5;
    .locals 2

    .line 1
    iget v0, p0, Lky5;->conditionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lky5;->condition_:Ljava/lang/Object;

    check-cast v0, Lgy5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lgy5;->C()Lgy5;

    move-result-object v0

    return-object v0
.end method

.method public D()Liy5;
    .locals 2

    .line 1
    iget v0, p0, Lky5;->conditionCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lky5;->condition_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Liy5;->i(I)Liy5;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Liy5;->i:Liy5;

    :cond_0
    return-object v0

    .line 4
    :cond_1
    sget-object v0, Liy5;->f:Liy5;

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
    sget-object p1, Lky5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lky5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lky5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lky5;->DEFAULT_INSTANCE:Lky5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lky5;->PARSER:Lik6;

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
    sget-object p1, Lky5;->DEFAULT_INSTANCE:Lky5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lky5$a;

    invoke-direct {p1, p3}, Lky5$a;-><init>(Lfy5;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lky5;

    invoke-direct {p1}, Lky5;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "condition_"

    aput-object v0, p1, p3

    const-string p3, "conditionCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lgy5;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000"

    .line 13
    sget-object p3, Lky5;->DEFAULT_INSTANCE:Lky5;

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
