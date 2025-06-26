.class public final Lsc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lsc6;",
        "Lsc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lsc6;

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lsc6;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private count_:I

.field private targetId_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsc6;

    invoke-direct {v0}, Lsc6;-><init>()V

    .line 2
    sput-object v0, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    .line 3
    const-class v1, Lsc6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    return-void
.end method

.method public static synthetic B()Lsc6;
    .locals 1

    .line 1
    sget-object v0, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    return-object v0
.end method

.method public static D()Lsc6;
    .locals 1

    .line 1
    sget-object v0, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lsc6;->count_:I

    return v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lsc6;->targetId_:I

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
    sget-object p1, Lsc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lsc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lsc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lsc6;->PARSER:Lik6;

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
    sget-object p1, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lsc6$b;

    invoke-direct {p1, p3}, Lsc6$b;-><init>(Lsc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lsc6;

    invoke-direct {p1}, Lsc6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetId_"

    aput-object v0, p1, p3

    const-string p3, "count_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    .line 12
    sget-object p3, Lsc6;->DEFAULT_INSTANCE:Lsc6;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 14
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
