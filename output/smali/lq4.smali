.class public final Llq4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llq4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Llq4;",
        "Llq4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzo:Llq4;

.field private static volatile zzp:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Llq4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llq4;

    invoke-direct {v0}, Llq4;-><init>()V

    .line 2
    sput-object v0, Llq4;->zzo:Llq4;

    .line 3
    const-class v1, Llq4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Llq4;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Llq4;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Llq4;->zzf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Llq4;->zzg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Llq4;->zzh:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Llq4;->zzi:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Llq4;->zzj:Ljava/lang/String;

    .line 9
    sget-object v1, Lmm4;->h:Lmm4;

    .line 10
    iput-object v1, p0, Llq4;->zzk:Lwk4;

    .line 11
    iput-object v0, p0, Llq4;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Llq4;
    .locals 1

    .line 1
    sget-object v0, Llq4;->zzo:Llq4;

    return-object v0
.end method

.method public static B(Llq4;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Llq4;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Llq4;->zzc:I

    .line 4
    iput-object p1, p0, Llq4;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static C(Llq4;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Llq4;->zzc:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Llq4;->zzc:I

    .line 4
    iput-object p1, p0, Llq4;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static p(Llq4;)Llq4$a;
    .locals 1

    .line 1
    sget-object v0, Llq4;->zzo:Llq4;

    .line 2
    invoke-virtual {v0}, Lpk4;->o()Lpk4$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpk4$b;->c(Lpk4;)Lpk4$b;

    .line 3
    check-cast v0, Llq4$a;

    return-object v0
.end method

.method public static s(Llq4;)V
    .locals 1

    .line 1
    iget v0, p0, Llq4;->zzc:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Llq4;->zzc:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Llq4;->zzm:Z

    return-void
.end method

.method public static t(Llq4;Ljava/lang/Iterable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Llq4;->zzk:Lwk4;

    .line 2
    invoke-interface {v0}, Lwk4;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lwk4;->i(I)Lwk4;

    move-result-object v0

    .line 5
    iput-object v0, p0, Llq4;->zzk:Lwk4;

    .line 6
    :cond_1
    iget-object p0, p0, Llq4;->zzk:Lwk4;

    .line 7
    sget-object v0, Lrk4;->a:Ljava/nio/charset/Charset;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    instance-of v0, p1, Lhl4;

    const-string v1, " is null."

    const-string v2, "Element at index "

    const/16 v3, 0x25

    if-eqz v0, :cond_5

    .line 10
    check-cast p1, Lhl4;

    invoke-interface {p1}, Lhl4;->b()Ljava/util/List;

    move-result-object p1

    .line 11
    move-object v0, p0

    check-cast v0, Lhl4;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p0, :cond_2

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_3
    instance-of v5, v4, Lvj4;

    if-eqz v5, :cond_4

    .line 19
    check-cast v4, Lvj4;

    invoke-interface {v0, v4}, Lhl4;->s0(Lvj4;)V

    goto :goto_1

    .line 20
    :cond_4
    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_5
    instance-of v0, p1, Lim4;

    if-eqz v0, :cond_6

    .line 22
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 23
    :cond_6
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 24
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 25
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_8

    .line 29
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 30
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_9
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method public static u(Llq4;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Llq4;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Llq4;->zzc:I

    .line 4
    iput-object p1, p0, Llq4;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static v()Llq4$a;
    .locals 1

    .line 1
    sget-object v0, Llq4;->zzo:Llq4;

    invoke-virtual {v0}, Lpk4;->o()Lpk4$b;

    move-result-object v0

    check-cast v0, Llq4$a;

    return-object v0
.end method

.method public static w(Llq4;)V
    .locals 1

    .line 1
    iget v0, p0, Llq4;->zzc:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Llq4;->zzc:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Llq4;->zzn:Z

    return-void
.end method

.method public static x(Llq4;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Llq4;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Llq4;->zzc:I

    .line 4
    iput-object p1, p0, Llq4;->zze:Ljava/lang/String;

    return-void
.end method

.method public static y()Llq4;
    .locals 1

    .line 1
    sget-object v0, Llq4;->zzo:Llq4;

    return-object v0
.end method

.method public static z(Llq4;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Llq4;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Llq4;->zzc:I

    .line 4
    iput-object p1, p0, Llq4;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lbp4;->a:[I

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
    sget-object p1, Llq4;->zzp:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Llq4;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Llq4;->zzp:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Llq4;->zzo:Llq4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Llq4;->zzp:Ljm4;

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
    sget-object p1, Llq4;->zzo:Llq4;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

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

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u001a\t\u1008\u0007\n\u1007\u0008\u000b\u1007\t"

    .line 11
    sget-object p3, Llq4;->zzo:Llq4;

    .line 12
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Llq4$a;

    invoke-direct {p1, p2}, Llq4$a;-><init>(Lbp4;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Llq4;

    invoke-direct {p1}, Llq4;-><init>()V

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

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llq4;->zzh:Ljava/lang/String;

    return-object v0
.end method
