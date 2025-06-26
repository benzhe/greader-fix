.class public final Ljy5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Ljy5;",
        "Ljy5$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Ljy5;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final FLOAT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Ljy5;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private doubleValue_:D

.field private floatValue_:F

.field private intValue_:J

.field private name_:Ljava/lang/String;

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljy5;

    invoke-direct {v0}, Ljy5;-><init>()V

    .line 2
    sput-object v0, Ljy5;->DEFAULT_INSTANCE:Ljy5;

    .line 3
    const-class v1, Ljy5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Ljy5;->name_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ljy5;->stringValue_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B()Ljy5;
    .locals 1

    .line 1
    sget-object v0, Ljy5;->DEFAULT_INSTANCE:Ljy5;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Ljy5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Ljy5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Ljy5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Ljy5;->DEFAULT_INSTANCE:Ljy5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Ljy5;->PARSER:Lik6;

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
    sget-object p1, Ljy5;->DEFAULT_INSTANCE:Ljy5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Ljy5$a;

    invoke-direct {p1, p3}, Ljy5$a;-><init>(Lfy5;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Ljy5;

    invoke-direct {p1}, Ljy5;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "stringValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "intValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "floatValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "doubleValue_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0001\u0005\u0000"

    .line 12
    sget-object p3, Ljy5;->DEFAULT_INSTANCE:Ljy5;

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
