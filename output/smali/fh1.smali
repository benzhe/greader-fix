.class public final Lfh1;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lfh1;",
        "Lfh1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lfh1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzex:Lfh1;


# instance fields
.field private zzdv:I

.field private zzev:Lgh1;

.field private zzew:Lhh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfh1;

    invoke-direct {v0}, Lfh1;-><init>()V

    .line 2
    sput-object v0, Lfh1;->zzex:Lfh1;

    .line 3
    const-class v1, Lfh1;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    return-void
.end method

.method public static synthetic y()Lfh1;
    .locals 1

    .line 1
    sget-object v0, Lfh1;->zzex:Lfh1;

    return-object v0
.end method


# virtual methods
.method public final A()Lgh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfh1;->zzev:Lgh1;

    if-nez v0, :cond_0

    invoke-static {}, Lgh1;->y()Lgh1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget v0, p0, Lfh1;->zzdv:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lhg1;->a:[I

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
    sget-object p1, Lfh1;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lfh1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lfh1;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lfh1;->zzex:Lfh1;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lfh1;->zzek:Ll83;

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
    sget-object p1, Lfh1;->zzex:Lfh1;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzev"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzew"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 11
    sget-object p3, Lfh1;->zzex:Lfh1;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lfh1$a;

    invoke-direct {p1, p2}, Lfh1$a;-><init>(Lhg1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lfh1;

    invoke-direct {p1}, Lfh1;-><init>()V

    return-object p1

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

.method public final x()Lhh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lfh1;->zzew:Lhh1;

    if-nez v0, :cond_0

    invoke-static {}, Lhh1;->y()Lhh1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    iget v0, p0, Lfh1;->zzdv:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
