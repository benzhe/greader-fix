.class public final Lyc6$i;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc6$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lyc6$i;",
        "Lyc6$i$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lyc6$i;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lyc6$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private direction_:I

.field private field_:Lyc6$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyc6$i;

    invoke-direct {v0}, Lyc6$i;-><init>()V

    .line 2
    sput-object v0, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

    .line 3
    const-class v1, Lyc6$i;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    return-void
.end method

.method public static synthetic B()Lyc6$i;
    .locals 1

    .line 1
    sget-object v0, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

    return-object v0
.end method

.method public static C(Lyc6$i;Lyc6$g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lyc6$i;->field_:Lyc6$g;

    return-void
.end method

.method public static D(Lyc6$i;Lyc6$e;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lyc6$e;->g()I

    move-result p1

    iput p1, p0, Lyc6$i;->direction_:I

    return-void
.end method

.method public static G()Lyc6$i$a;
    .locals 1

    .line 1
    sget-object v0, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lyc6$i$a;

    return-object v0
.end method


# virtual methods
.method public E()Lyc6$e;
    .locals 1

    .line 1
    iget v0, p0, Lyc6$i;->direction_:I

    invoke-static {v0}, Lyc6$e;->i(I)Lyc6$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lyc6$e;->i:Lyc6$e;

    :cond_0
    return-object v0
.end method

.method public F()Lyc6$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6$i;->field_:Lyc6$g;

    if-nez v0, :cond_0

    invoke-static {}, Lyc6$g;->D()Lyc6$g;

    move-result-object v0

    :cond_0
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
    sget-object p1, Lyc6$i;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lyc6$i;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lyc6$i;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lyc6$i;->PARSER:Lik6;

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
    sget-object p1, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lyc6$i$a;

    invoke-direct {p1, p3}, Lyc6$i$a;-><init>(Lyc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lyc6$i;

    invoke-direct {p1}, Lyc6$i;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "field_"

    aput-object v0, p1, p3

    const-string p3, "direction_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000c"

    .line 12
    sget-object p3, Lyc6$i;->DEFAULT_INSTANCE:Lyc6$i;

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
