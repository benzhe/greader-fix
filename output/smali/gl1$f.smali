.class public final Lgl1$f;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgl1$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lgl1$f;",
        "Lgl1$f$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lgl1$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzle:Lgl1$f;


# instance fields
.field private zzdv:I

.field private zzhf:J

.field private zzhg:J

.field private zzla:J

.field private zzlb:J

.field private zzlc:J

.field private zzld:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgl1$f;

    invoke-direct {v0}, Lgl1$f;-><init>()V

    .line 2
    sput-object v0, Lgl1$f;->zzle:Lgl1$f;

    .line 3
    const-class v1, Lgl1$f;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lgl1$f;->zzhf:J

    .line 3
    iput-wide v0, p0, Lgl1$f;->zzhg:J

    .line 4
    iput-wide v0, p0, Lgl1$f;->zzla:J

    .line 5
    iput-wide v0, p0, Lgl1$f;->zzlb:J

    .line 6
    iput-wide v0, p0, Lgl1$f;->zzlc:J

    .line 7
    iput-wide v0, p0, Lgl1$f;->zzld:J

    return-void
.end method

.method public static A(Lgl1$f;J)V
    .locals 1

    .line 1
    iget v0, p0, Lgl1$f;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgl1$f;->zzdv:I

    .line 2
    iput-wide p1, p0, Lgl1$f;->zzlb:J

    return-void
.end method

.method public static B(Lgl1$f;J)V
    .locals 1

    .line 1
    iget v0, p0, Lgl1$f;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgl1$f;->zzdv:I

    .line 2
    iput-wide p1, p0, Lgl1$f;->zzlc:J

    return-void
.end method

.method public static D(Lgl1$f;J)V
    .locals 1

    .line 1
    iget v0, p0, Lgl1$f;->zzdv:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgl1$f;->zzdv:I

    .line 2
    iput-wide p1, p0, Lgl1$f;->zzld:J

    return-void
.end method

.method public static x(Lgl1$f;J)V
    .locals 1

    .line 1
    iget v0, p0, Lgl1$f;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgl1$f;->zzdv:I

    .line 2
    iput-wide p1, p0, Lgl1$f;->zzla:J

    return-void
.end method

.method public static y()Lgl1$f$a;
    .locals 1

    .line 1
    sget-object v0, Lgl1$f;->zzle:Lgl1$f;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lgl1$f$a;

    return-object v0
.end method

.method public static synthetic z()Lgl1$f;
    .locals 1

    .line 1
    sget-object v0, Lgl1$f;->zzle:Lgl1$f;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lmm1;->a:[I

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
    sget-object p1, Lgl1$f;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lgl1$f;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lgl1$f;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lgl1$f;->zzle:Lgl1$f;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lgl1$f;->zzek:Ll83;

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
    sget-object p1, Lgl1$f;->zzle:Lgl1$f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzhf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzla"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzlb"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzlc"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzld"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005"

    .line 11
    sget-object p3, Lgl1$f;->zzle:Lgl1$f;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lgl1$f$a;

    invoke-direct {p1, p2}, Lgl1$f$a;-><init>(Lmm1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lgl1$f;

    invoke-direct {p1}, Lgl1$f;-><init>()V

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
