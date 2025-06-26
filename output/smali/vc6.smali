.class public final Lvc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvc6$b;,
        Lvc6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lvc6;",
        "Lvc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lvc6;

.field public static final DOCUMENT_CHANGE_FIELD_NUMBER:I = 0x3

.field public static final DOCUMENT_DELETE_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final FILTER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lvc6;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_CHANGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private responseTypeCase_:I

.field private responseType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvc6;

    invoke-direct {v0}, Lvc6;-><init>()V

    .line 2
    sput-object v0, Lvc6;->DEFAULT_INSTANCE:Lvc6;

    .line 3
    const-class v1, Lvc6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lvc6;->responseTypeCase_:I

    return-void
.end method

.method public static synthetic B()Lvc6;
    .locals 1

    .line 1
    sget-object v0, Lvc6;->DEFAULT_INSTANCE:Lvc6;

    return-object v0
.end method

.method public static C()Lvc6;
    .locals 1

    .line 1
    sget-object v0, Lvc6;->DEFAULT_INSTANCE:Lvc6;

    return-object v0
.end method


# virtual methods
.method public D()Lnc6;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lvc6;->responseType_:Ljava/lang/Object;

    check-cast v0, Lnc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lnc6;->C()Lnc6;

    move-result-object v0

    return-object v0
.end method

.method public E()Loc6;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lvc6;->responseType_:Ljava/lang/Object;

    check-cast v0, Loc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Loc6;->C()Loc6;

    move-result-object v0

    return-object v0
.end method

.method public F()Lqc6;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lvc6;->responseType_:Ljava/lang/Object;

    check-cast v0, Lqc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lqc6;->C()Lqc6;

    move-result-object v0

    return-object v0
.end method

.method public G()Lsc6;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lvc6;->responseType_:Ljava/lang/Object;

    check-cast v0, Lsc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lsc6;->D()Lsc6;

    move-result-object v0

    return-object v0
.end method

.method public H()Lvc6$c;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lvc6$c;->h:Lvc6$c;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lvc6$c;->i:Lvc6$c;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lvc6$c;->g:Lvc6$c;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lvc6$c;->f:Lvc6$c;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lvc6$c;->e:Lvc6$c;

    goto :goto_0

    .line 7
    :cond_5
    sget-object v0, Lvc6$c;->j:Lvc6$c;

    :goto_0
    return-object v0
.end method

.method public I()Lad6;
    .locals 2

    .line 1
    iget v0, p0, Lvc6;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lvc6;->responseType_:Ljava/lang/Object;

    check-cast v0, Lad6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lad6;->D()Lad6;

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
    sget-object p1, Lvc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lvc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lvc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lvc6;->DEFAULT_INSTANCE:Lvc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lvc6;->PARSER:Lik6;

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
    sget-object p1, Lvc6;->DEFAULT_INSTANCE:Lvc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lvc6$b;

    invoke-direct {p1, p3}, Lvc6$b;-><init>(Lvc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lvc6;

    invoke-direct {p1}, Lvc6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseType_"

    aput-object v0, p1, p3

    const-string p3, "responseTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lad6;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lnc6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Loc6;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lsc6;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lqc6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 13
    sget-object p3, Lvc6;->DEFAULT_INSTANCE:Lvc6;

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
