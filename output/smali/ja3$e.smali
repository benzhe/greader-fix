.class public final Lja3$e;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$e$b;,
        Lja3$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3$e;",
        "Lja3$e$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjcm:Lja3$e;


# instance fields
.field private zzdv:I

.field private zzjat:B

.field private zzjcb:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Lja3$c;",
            ">;"
        }
    .end annotation
.end field

.field private zzjcc:Lk53;

.field private zzjcd:Lk53;

.field private zzjce:I

.field private zzjck:Lja3$e$a;

.field private zzjcl:Lk53;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3$e;

    invoke-direct {v0}, Lja3$e;-><init>()V

    .line 2
    sput-object v0, Lja3$e;->zzjcm:Lja3$e;

    .line 3
    const-class v1, Lja3$e;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lja3$e;->zzjat:B

    .line 3
    sget-object v0, Lp83;->h:Lp83;

    .line 4
    iput-object v0, p0, Lja3$e;->zzjcb:Lb73;

    .line 5
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lja3$e;->zzjcc:Lk53;

    .line 6
    iput-object v0, p0, Lja3$e;->zzjcd:Lk53;

    .line 7
    iput-object v0, p0, Lja3$e;->zzjcl:Lk53;

    return-void
.end method

.method public static synthetic x()Lja3$e;
    .locals 1

    .line 1
    sget-object v0, Lja3$e;->zzjcm:Lja3$e;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lha3;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lja3$e;->zzjat:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lja3$e;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lja3$e;->zzek:Ll83;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lja3$e;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lja3$e;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ls63$a;

    sget-object p3, Lja3$e;->zzjcm:Lja3$e;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 9
    sput-object p1, Lja3$e;->zzek:Ll83;

    .line 10
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lja3$e;->zzjcm:Lja3$e;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, p3

    const-string p2, "zzjck"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzjcb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lja3$c;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjcc"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjcd"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjce"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjcl"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 13
    sget-object p3, Lja3$e;->zzjcm:Lja3$e;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lja3$e$b;

    invoke-direct {p1, v1}, Lja3$e$b;-><init>(Lha3;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lja3$e;

    invoke-direct {p1}, Lja3$e;-><init>()V

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
