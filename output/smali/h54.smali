.class public final Lh54;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lh54;",
        "Lg54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzZ:Lh54;

.field public static final synthetic zza:I


# instance fields
.field private zzA:Ljava/lang/String;

.field private zzB:J

.field private zzC:I

.field private zzD:Ljava/lang/String;

.field private zzE:Ljava/lang/String;

.field private zzF:Z

.field private zzG:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lu44;",
            ">;"
        }
    .end annotation
.end field

.field private zzH:Ljava/lang/String;

.field private zzI:I

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/lang/String;

.field private zzM:J

.field private zzN:J

.field private zzO:Ljava/lang/String;

.field private zzP:Ljava/lang/String;

.field private zzQ:I

.field private zzR:Ljava/lang/String;

.field private zzS:Ll54;

.field private zzT:Lg94;

.field private zzU:J

.field private zzV:J

.field private zzW:Ljava/lang/String;

.field private zzX:Ljava/lang/String;

.field private zzY:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lz44;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lr54;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:I

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:J

.field private zzx:J

.field private zzy:Ljava/lang/String;

.field private zzz:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh54;

    .line 1
    invoke-direct {v0}, Lh54;-><init>()V

    sput-object v0, Lh54;->zzZ:Lh54;

    const-class v1, Lh54;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    .line 2
    sget-object v0, Lla4;->h:Lla4;

    .line 3
    iput-object v0, p0, Lh54;->zzh:Li94;

    .line 4
    iput-object v0, p0, Lh54;->zzi:Li94;

    const-string v1, ""

    iput-object v1, p0, Lh54;->zzo:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzp:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzq:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzr:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzt:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzu:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzv:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzy:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzA:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzD:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzE:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lh54;->zzG:Li94;

    iput-object v1, p0, Lh54;->zzH:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzL:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzO:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzP:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzR:Ljava/lang/String;

    .line 6
    sget-object v0, Ld94;->h:Ld94;

    .line 7
    iput-object v0, p0, Lh54;->zzT:Lg94;

    iput-object v1, p0, Lh54;->zzW:Ljava/lang/String;

    iput-object v1, p0, Lh54;->zzX:Ljava/lang/String;

    return-void
.end method

.method public static C0()Lg54;
    .locals 1

    sget-object v0, Lh54;->zzZ:Lh54;

    .line 1
    invoke-virtual {v0}, Lc94;->m()Lz84;

    move-result-object v0

    check-cast v0, Lg54;

    return-object v0
.end method

.method public static synthetic D0()Lh54;
    .locals 1

    sget-object v0, Lh54;->zzZ:Lh54;

    return-object v0
.end method

.method public static synthetic E0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput v1, p0, Lh54;->zzg:I

    return-void
.end method

.method public static synthetic F0(Lh54;ILz44;)V
    .locals 0

    invoke-virtual {p0}, Lh54;->T0()V

    iget-object p0, p0, Lh54;->zzh:Li94;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic G0(Lh54;Lz44;)V
    .locals 0

    invoke-virtual {p0}, Lh54;->T0()V

    iget-object p0, p0, Lh54;->zzh:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic H0(Lh54;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lh54;->T0()V

    iget-object p0, p0, Lh54;->zzh:Li94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static I0(Lh54;)V
    .locals 1

    .line 1
    sget-object v0, Lla4;->h:Lla4;

    .line 2
    iput-object v0, p0, Lh54;->zzh:Li94;

    return-void
.end method

.method public static synthetic J0(Lh54;I)V
    .locals 0

    invoke-virtual {p0}, Lh54;->T0()V

    iget-object p0, p0, Lh54;->zzh:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic K0(Lh54;ILr54;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lh54;->U0()V

    iget-object p0, p0, Lh54;->zzi:Li94;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic L0(Lh54;Lr54;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lh54;->U0()V

    iget-object p0, p0, Lh54;->zzi:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic M0(Lh54;I)V
    .locals 0

    invoke-virtual {p0}, Lh54;->U0()V

    iget-object p0, p0, Lh54;->zzi:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic N0(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzj:J

    return-void
.end method

.method public static synthetic O0(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzk:J

    return-void
.end method

.method public static synthetic P0(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzl:J

    return-void
.end method

.method public static synthetic Q0(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzm:J

    return-void
.end method

.method public static synthetic R0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lh54;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh54;->zzm:J

    return-void
.end method

.method public static synthetic T(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzn:J

    return-void
.end method

.method public static synthetic U(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lh54;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lh54;->zzn:J

    return-void
.end method

.method public static synthetic V(Lh54;)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lh54;->zze:I

    const-string v0, "android"

    iput-object v0, p0, Lh54;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic V0(Lh54;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzH:Ljava/lang/String;

    return-void
.end method

.method public static synthetic W(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static synthetic W0(Lh54;I)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput p1, p0, Lh54;->zzI:I

    return-void
.end method

.method public static synthetic X(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzq:Ljava/lang/String;

    return-void
.end method

.method public static synthetic X0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    sget-object v0, Lh54;->zzZ:Lh54;

    iget-object v0, v0, Lh54;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lh54;->zzL:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Y(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzr:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Y0(Lh54;J)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzM:J

    return-void
.end method

.method public static synthetic Z(Lh54;I)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lh54;->zze:I

    iput p1, p0, Lh54;->zzs:I

    return-void
.end method

.method public static synthetic Z0(Lh54;J)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzN:J

    return-void
.end method

.method public static synthetic a0(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a1(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    sget-object v0, Lh54;->zzZ:Lh54;

    iget-object v0, v0, Lh54;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lh54;->zzO:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b0(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzu:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b1(Lh54;I)V
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lh54;->zzf:I

    iput p1, p0, Lh54;->zzQ:I

    return-void
.end method

.method public static synthetic c0(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzv:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c1(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lh54;->zzf:I

    iput-object p1, p0, Lh54;->zzR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d0(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zze:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzw:J

    return-void
.end method

.method public static d1(Lh54;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lh54;->zzT:Lg94;

    move-object v1, v0

    check-cast v1, Lu74;

    .line 1
    iget-boolean v1, v1, Lu74;->e:Z

    if-nez v1, :cond_1

    .line 2
    check-cast v0, Ld94;

    .line 3
    iget v1, v0, Ld94;->g:I

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ld94;->h(I)Lg94;

    move-result-object v0

    iput-object v0, p0, Lh54;->zzT:Lg94;

    :cond_1
    iget-object p0, p0, Lh54;->zzT:Lg94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    const-wide/32 v0, 0x9088

    iput-wide v0, p0, Lh54;->zzx:J

    return-void
.end method

.method public static synthetic e1(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lh54;->zzf:I

    iput-wide p1, p0, Lh54;->zzU:J

    return-void
.end method

.method public static synthetic f0(Lh54;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzy:Ljava/lang/String;

    return-void
.end method

.method public static synthetic f1(Lh54;J)V
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lh54;->zzf:I

    iput-wide p1, p0, Lh54;->zzV:J

    return-void
.end method

.method public static synthetic g0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    sget-object v0, Lh54;->zzZ:Lh54;

    iget-object v0, v0, Lh54;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lh54;->zzy:Ljava/lang/String;

    return-void
.end method

.method public static synthetic g1(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zzf:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lh54;->zzf:I

    iput-object p1, p0, Lh54;->zzW:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h0(Lh54;Z)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-boolean p1, p0, Lh54;->zzz:Z

    return-void
.end method

.method public static synthetic h1(Lh54;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zzf:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lh54;->zzf:I

    iput-object p1, p0, Lh54;->zzX:Ljava/lang/String;

    return-void
.end method

.method public static synthetic i0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh54;->zzz:Z

    return-void
.end method

.method public static synthetic j0(Lh54;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzA:Ljava/lang/String;

    return-void
.end method

.method public static synthetic k0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    sget-object v0, Lh54;->zzZ:Lh54;

    iget-object v0, v0, Lh54;->zzA:Ljava/lang/String;

    iput-object v0, p0, Lh54;->zzA:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l0(Lh54;J)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-wide p1, p0, Lh54;->zzB:J

    return-void
.end method

.method public static synthetic m0(Lh54;I)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput p1, p0, Lh54;->zzC:I

    return-void
.end method

.method public static synthetic n0(Lh54;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzD:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o0(Lh54;)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    sget-object v0, Lh54;->zzZ:Lh54;

    iget-object v0, v0, Lh54;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lh54;->zzD:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p0(Lh54;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-object p1, p0, Lh54;->zzE:Ljava/lang/String;

    return-void
.end method

.method public static synthetic q0(Lh54;Z)V
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lh54;->zze:I

    iput-boolean p1, p0, Lh54;->zzF:Z

    return-void
.end method

.method public static synthetic r0(Lh54;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lh54;->zzG:Li94;

    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lh54;->zzG:Li94;

    :cond_0
    iget-object p0, p0, Lh54;->zzG:Li94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static s0(Lh54;)V
    .locals 1

    .line 1
    sget-object v0, Lla4;->h:Lla4;

    .line 2
    iput-object v0, p0, Lh54;->zzG:Li94;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lh54;->zzz:Z

    return v0
.end method

.method public final A0()Z
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzA:Ljava/lang/String;

    return-object v0
.end method

.method public final B0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzX:Ljava/lang/String;

    return-object v0
.end method

.method public final B1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzB:J

    return-wide v0
.end method

.method public final D1()I
    .locals 1

    iget v0, p0, Lh54;->zzs:I

    return v0
.end method

.method public final E()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lh54;->zzC:I

    return v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzD:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzE:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    iget-boolean v0, p0, Lh54;->zzF:Z

    return v0
.end method

.method public final K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu44;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh54;->zzG:Li94;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzH:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N()I
    .locals 1

    iget v0, p0, Lh54;->zzI:I

    return v0
.end method

.method public final O()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzM:J

    return-wide v0
.end method

.method public final Q()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzN:J

    return-wide v0
.end method

.method public final S()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S0()I
    .locals 1

    iget v0, p0, Lh54;->zzg:I

    return v0
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Lh54;->zzh:Li94;

    .line 1
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lh54;->zzh:Li94;

    :cond_0
    return-void
.end method

.method public final U0()V
    .locals 2

    iget-object v0, p0, Lh54;->zzi:Li94;

    .line 1
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lh54;->zzi:Li94;

    :cond_0
    return-void
.end method

.method public final i1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz44;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh54;->zzh:Li94;

    return-object v0
.end method

.method public final j1()I
    .locals 1

    iget-object v0, p0, Lh54;->zzh:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final k1(I)Lz44;
    .locals 1

    iget-object v0, p0, Lh54;->zzh:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz44;

    return-object p1
.end method

.method public final l1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr54;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh54;->zzi:Li94;

    return-object v0
.end method

.method public final m1()I
    .locals 1

    iget-object v0, p0, Lh54;->zzi:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final n1(I)Lr54;
    .locals 1

    iget-object v0, p0, Lh54;->zzi:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr54;

    return-object p1
.end method

.method public final o1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p1()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzj:J

    return-wide v0
.end method

.method public final q1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lh54;->zzZ:Lh54;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lg54;

    .line 3
    invoke-direct {p1, p2}, Lg54;-><init>(Lq44;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lh54;

    .line 5
    invoke-direct {p1}, Lh54;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x33

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    .line 6
    const-class p2, Lz44;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lr54;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-class p3, Lu44;

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "zzQ"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzR"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-string p3, "zzS"

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzT"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzU"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    const-string p3, "zzV"

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzW"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-string p3, "zzX"

    aput-object p3, p1, p2

    const/16 p2, 0x31

    const-string p3, "zzY"

    aput-object p3, p1, p2

    .line 7
    sget-object p2, Lr44;->a:Lf94;

    const/16 p3, 0x32

    aput-object p2, p1, p3

    sget-object p2, Lh54;->zzZ:Lh54;

    .line 8
    new-instance p3, Lma4;

    const-string v0, "\u0001-\u0000\u0002\u00015-\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1002\u0001\u0005\u1002\u0002\u0006\u1002\u0003\u0007\u1002\u0005\u0008\u1008\u0006\t\u1008\u0007\n\u1008\u0008\u000b\u1008\t\u000c\u1004\n\r\u1008\u000b\u000e\u1008\u000c\u0010\u1008\r\u0011\u1002\u000e\u0012\u1002\u000f\u0013\u1008\u0010\u0014\u1007\u0011\u0015\u1008\u0012\u0016\u1002\u0013\u0017\u1004\u0014\u0018\u1008\u0015\u0019\u1008\u0016\u001a\u1002\u0004\u001c\u1007\u0017\u001d\u001b\u001e\u1008\u0018\u001f\u1004\u0019 \u1004\u001a!\u1004\u001b\"\u1008\u001c#\u1002\u001d$\u1002\u001e%\u1008\u001f&\u1008 \'\u1004!)\u1008\",\u1009#-\u001d.\u1002$/\u1002%2\u1008&4\u1008\'5\u100c("

    .line 9
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 10
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final r1()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzk:J

    return-wide v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final s1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzv:Ljava/lang/String;

    return-object v0
.end method

.method public final t0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzO:Ljava/lang/String;

    return-object v0
.end method

.method public final t1()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzl:J

    return-wide v0
.end method

.method public final u()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u0()Z
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzw:J

    return-wide v0
.end method

.method public final v0()I
    .locals 1

    iget v0, p0, Lh54;->zzQ:I

    return v0
.end method

.method public final v1()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzm:J

    return-wide v0
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzR:Ljava/lang/String;

    return-object v0
.end method

.method public final w1()Z
    .locals 1

    iget v0, p0, Lh54;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzx:J

    return-wide v0
.end method

.method public final x0()Z
    .locals 1

    iget v0, p0, Lh54;->zzf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x1()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzn:J

    return-wide v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public final y0()J
    .locals 2

    iget-wide v0, p0, Lh54;->zzU:J

    return-wide v0
.end method

.method public final y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    iget v0, p0, Lh54;->zze:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzW:Ljava/lang/String;

    return-object v0
.end method

.method public final z1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh54;->zzp:Ljava/lang/String;

    return-object v0
.end method
