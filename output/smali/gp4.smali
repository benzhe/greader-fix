.class public final Lgp4;
.super Lpk4$c;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgp4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$c<",
        "Lgp4;",
        "Lgp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzbd:Lgp4;

.field private static volatile zzbe:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lgp4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaa:Lar4;

.field private zzab:Lxq4;

.field private zzac:Lzq4;

.field private zzad:Lcr4;

.field private zzae:Lbr4;

.field private zzaf:Ldr4;

.field private zzag:Ler4;

.field private zzah:Lfr4;

.field private zzai:Lgr4;

.field private zzaj:Lhr4;

.field private zzak:Luq4;

.field private zzal:Lwq4;

.field private zzam:Lvq4;

.field private zzan:Lkp4;

.field private zzao:Ldp4;

.field private zzap:Lcp4;

.field private zzaq:Ldq4;

.field private zzar:Loq4;

.field private zzas:Lnq4;

.field private zzat:Lpq4;

.field private zzau:Lqq4;

.field private zzav:Ltq4;

.field private zzaw:Lrq4;

.field private zzax:Lsq4;

.field private zzay:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Lco4;",
            ">;"
        }
    .end annotation
.end field

.field private zzaz:Lkq4;

.field private zzba:Ljp4;

.field private zzbb:Lmp4;

.field private zzbc:B

.field private zzd:I

.field private zze:I

.field private zzf:Llq4;

.field private zzg:I

.field private zzh:Z

.field private zzi:Lnp4;

.field private zzj:Lkr4;

.field private zzk:Ljr4;

.field private zzl:Lir4;

.field private zzm:Lsp4;

.field private zzn:Lhq4;

.field private zzo:Lrp4;

.field private zzp:Ltp4;

.field private zzq:Lvp4;

.field private zzr:Lup4;

.field private zzs:Lyp4;

.field private zzt:Lbq4;

.field private zzu:Laq4;

.field private zzv:Lcq4;

.field private zzw:Lfq4;

.field private zzx:Lgq4;

.field private zzy:Lxp4;

.field private zzz:Liq4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgp4;

    invoke-direct {v0}, Lgp4;-><init>()V

    sput-object v0, Lgp4;->zzbd:Lgp4;

    const-class v1, Lgp4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lpk4$c;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lgp4;->zzbc:B

    .line 1
    sget-object v0, Lmm4;->h:Lmm4;

    .line 2
    iput-object v0, p0, Lgp4;->zzay:Lwk4;

    return-void
.end method

.method public static p(Lgp4;)Lgp4$a;
    .locals 1

    sget-object v0, Lgp4;->zzbd:Lgp4;

    .line 1
    invoke-virtual {v0}, Lpk4;->o()Lpk4$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpk4$b;->c(Lpk4;)Lpk4$b;

    .line 2
    check-cast v0, Lgp4$a;

    return-object v0
.end method

.method public static s(Lgp4;)V
    .locals 1

    .line 1
    iget v0, p0, Lgp4;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgp4;->zzd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgp4;->zzh:Z

    return-void
.end method

.method public static t(Lgp4;Loh4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Loh4;->e:I

    .line 3
    iput p1, p0, Lgp4;->zzg:I

    iget p1, p0, Lgp4;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgp4;->zzd:I

    return-void
.end method

.method public static u(Lgp4;Lxp4;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lgp4;->zzy:Lxp4;

    iget p1, p0, Lgp4;->zzd:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lgp4;->zzd:I

    return-void
.end method

.method public static v(Lgp4;Llq4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lgp4;->zzf:Llq4;

    iget p1, p0, Lgp4;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgp4;->zzd:I

    return-void
.end method

.method public static w()Lgp4$a;
    .locals 1

    sget-object v0, Lgp4;->zzbd:Lgp4;

    invoke-virtual {v0}, Lpk4;->o()Lpk4$b;

    move-result-object v0

    check-cast v0, Lgp4$a;

    return-object v0
.end method

.method public static synthetic x()Lgp4;
    .locals 1

    sget-object v0, Lgp4;->zzbd:Lgp4;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p3, Lbp4;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    iput-byte p1, p0, Lgp4;->zzbc:B

    return-object v1

    :pswitch_1
    iget-byte p1, p0, Lgp4;->zzbc:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lgp4;->zzbe:Ljm4;

    if-nez p1, :cond_2

    const-class p2, Lgp4;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lgp4;->zzbe:Ljm4;

    if-nez p1, :cond_1

    new-instance p1, Lpk4$a;

    sget-object p3, Lgp4;->zzbd:Lgp4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    sput-object p1, Lgp4;->zzbe:Ljm4;

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

    :pswitch_3
    sget-object p1, Lgp4;->zzbd:Lgp4;

    return-object p1

    :pswitch_4
    const/16 p1, 0x35

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const-string p2, "zze"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    sget-object p3, Loh4;->f:Loh4;

    sget-object p3, Lqh4;->a:Lvk4;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzaa"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzab"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzac"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzad"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzae"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzaf"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzag"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzah"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzai"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzaj"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzak"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzal"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzam"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzap"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzaq"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzar"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzas"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzat"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzau"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzav"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzan"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "zzao"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzay"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-class p3, Lco4;

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzaz"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzaw"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-string p3, "zzax"

    aput-object p3, p1, p2

    const/16 p2, 0x31

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x32

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x33

    const-string p3, "zzba"

    aput-object p3, p1, p2

    const/16 p2, 0x34

    const-string p3, "zzbb"

    aput-object p3, p1, p2

    const-string p2, "\u00011\u0000\u0002\u000131\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u100c\u0001\u0003\u1009\u0003\u0004\u1009\u0005\u0005\u1009\u0007\u0006\u1009\u0008\u0007\u1009\t\u0008\u1009\u0015\t\u1009\u0016\n\u1009\u0017\u000b\u1009\u0018\u000c\u1009\u0019\r\u1009\u001a\u000e\u1009\u001b\u000f\u1009\u001c\u0010\u1009\u001d\u0011\u1009\u001e\u0012\u1009\u000c\u0013\u1009\u0012\u0014\u1009\u0004\u0015\u1009\u0013\u0016\u1009\u0014\u0017\u1009\u001f\u0018\u1009 \u0019\u1009!\u001a\u1009\r\u001b\u1009\u000e\u001c\u1009\u000f\u001d\u1009\u0006\u001e\u1009$\u001f\u1009% \u1009&!\u1009\'\"\u1009(#\u1009)$\u1009*%\u1007\u0002\'\u1009\"(\u1009#)\u041b*\u1009-,\u1009\u0010-\u1009\u0011.\u1009+/\u1009,0\u1009\n1\u1009\u000b2\u1009.3\u1009/"

    sget-object p3, Lgp4;->zzbd:Lgp4;

    .line 1
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lgp4$a;

    invoke-direct {p1, v1}, Lgp4$a;-><init>(Lbp4;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lgp4;

    invoke-direct {p1}, Lgp4;-><init>()V

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

.method public final q()Llq4;
    .locals 1

    iget-object v0, p0, Lgp4;->zzf:Llq4;

    if-nez v0, :cond_0

    invoke-static {}, Llq4;->y()Llq4;

    move-result-object v0

    :cond_0
    return-object v0
.end method
