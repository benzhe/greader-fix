.class public final Lyc6$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc6$h$a;,
        Lyc6$h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lyc6$h;",
        "Lyc6$h$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COMPOSITE_FILTER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lyc6$h;

.field public static final FIELD_FILTER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lyc6$h;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNARY_FILTER_FIELD_NUMBER:I = 0x3


# instance fields
.field private filterTypeCase_:I

.field private filterType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyc6$h;

    invoke-direct {v0}, Lyc6$h;-><init>()V

    .line 2
    sput-object v0, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    .line 3
    const-class v1, Lyc6$h;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lyc6$h;->filterTypeCase_:I

    return-void
.end method

.method public static B(Lyc6$h;Lyc6$f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lyc6$h;->filterTypeCase_:I

    return-void
.end method

.method public static C(Lyc6$h;Lyc6$k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lyc6$h;->filterTypeCase_:I

    return-void
.end method

.method public static synthetic D()Lyc6$h;
    .locals 1

    .line 1
    sget-object v0, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    return-object v0
.end method

.method public static E(Lyc6$h;Lyc6$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lyc6$h;->filterTypeCase_:I

    return-void
.end method

.method public static G()Lyc6$h;
    .locals 1

    .line 1
    sget-object v0, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    return-object v0
.end method

.method public static K()Lyc6$h$a;
    .locals 1

    .line 1
    sget-object v0, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lyc6$h$a;

    return-object v0
.end method


# virtual methods
.method public F()Lyc6$d;
    .locals 2

    .line 1
    iget v0, p0, Lyc6$h;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    check-cast v0, Lyc6$d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lyc6$d;->E()Lyc6$d;

    move-result-object v0

    return-object v0
.end method

.method public H()Lyc6$f;
    .locals 2

    .line 1
    iget v0, p0, Lyc6$h;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    check-cast v0, Lyc6$f;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lyc6$f;->F()Lyc6$f;

    move-result-object v0

    return-object v0
.end method

.method public I()Lyc6$h$b;
    .locals 2

    .line 1
    iget v0, p0, Lyc6$h;->filterTypeCase_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lyc6$h$b;->g:Lyc6$h$b;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lyc6$h$b;->f:Lyc6$h$b;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lyc6$h$b;->e:Lyc6$h$b;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lyc6$h$b;->h:Lyc6$h$b;

    :goto_0
    return-object v0
.end method

.method public J()Lyc6$k;
    .locals 2

    .line 1
    iget v0, p0, Lyc6$h;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lyc6$h;->filterType_:Ljava/lang/Object;

    check-cast v0, Lyc6$k;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lyc6$k;->E()Lyc6$k;

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
    sget-object p1, Lyc6$h;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lyc6$h;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lyc6$h;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lyc6$h;->PARSER:Lik6;

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
    sget-object p1, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lyc6$h$a;

    invoke-direct {p1, p3}, Lyc6$h$a;-><init>(Lyc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lyc6$h;

    invoke-direct {p1}, Lyc6$h;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "filterType_"

    aput-object v0, p1, p3

    const-string p3, "filterTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lyc6$d;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lyc6$f;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lyc6$k;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    .line 13
    sget-object p3, Lyc6$h;->DEFAULT_INSTANCE:Lyc6$h;

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
