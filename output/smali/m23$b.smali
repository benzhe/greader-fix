.class public final Lm23$b;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm23$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lm23$b;",
        "Lm23$b$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lm23$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzikz:Lm23$b;


# instance fields
.field private zzikm:I

.field private zzikw:Lg23;

.field private zzikx:I

.field private zziky:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm23$b;

    invoke-direct {v0}, Lm23$b;-><init>()V

    .line 2
    sput-object v0, Lm23$b;->zzikz:Lm23$b;

    .line 3
    const-class v1, Lm23$b;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    return-void
.end method

.method public static synthetic D()Lm23$b;
    .locals 1

    .line 1
    sget-object v0, Lm23$b;->zzikz:Lm23$b;

    return-object v0
.end method


# virtual methods
.method public final A()Lg23;
    .locals 1

    .line 1
    iget-object v0, p0, Lm23$b;->zzikw:Lg23;

    if-nez v0, :cond_0

    invoke-static {}, Lg23;->F()Lg23;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final B()I
    .locals 1

    .line 1
    iget v0, p0, Lm23$b;->zziky:I

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Ln23;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lm23$b;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lm23$b;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lm23$b;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lm23$b;->zzikz:Lm23$b;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lm23$b;->zzek:Ll83;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Lm23$b;->zzikz:Lm23$b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzikw"

    aput-object v0, p1, p2

    const-string p2, "zzikx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziky"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzikm"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 11
    sget-object p3, Lm23$b;->zzikz:Lm23$b;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lm23$b$a;

    invoke-direct {p1, p2}, Lm23$b$a;-><init>(Ln23;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lm23$b;

    invoke-direct {p1}, Lm23$b;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x()Lh23;
    .locals 2

    .line 1
    iget v0, p0, Lm23$b;->zzikx:I

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
    sget-object v0, Lh23;->i:Lh23;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lh23;->h:Lh23;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lh23;->g:Lh23;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lh23;->f:Lh23;

    :goto_0
    if-nez v0, :cond_4

    .line 6
    sget-object v0, Lh23;->j:Lh23;

    :cond_4
    return-object v0
.end method

.method public final y()Ly23;
    .locals 2

    .line 1
    iget v0, p0, Lm23$b;->zzikm:I

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
    sget-object v0, Ly23;->j:Ly23;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Ly23;->i:Ly23;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Ly23;->h:Ly23;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Ly23;->g:Ly23;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Ly23;->f:Ly23;

    :goto_0
    if-nez v0, :cond_5

    .line 7
    sget-object v0, Ly23;->k:Ly23;

    :cond_5
    return-object v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm23$b;->zzikw:Lg23;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
