.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Lwk0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzab;


# static fields
.field public static final y:I


# instance fields
.field public final e:Landroid/app/Activity;

.field public f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field public g:Lxw0;

.field public h:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field public i:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field public j:Z

.field public k:Landroid/widget/FrameLayout;

.field public l:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public m:Z

.field public n:Z

.field public o:Lvv;

.field public p:Z

.field public q:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field public final r:Ljava/lang/Object;

.field public s:Ljava/lang/Runnable;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zze;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lwk0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    .line 6
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->r:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->v:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->w:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->x:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final W6(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    .line 3
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzk;->zzbpu:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 6
    sget-object v0, Ly40;->J0:Lo40;

    .line 7
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 8
    invoke-virtual {v3, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_4

    const/16 v0, 0x1504

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    .line 11
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_5
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 13
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 16
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    return-void
.end method

.method public final X6(Z)V
    .locals 4

    .line 1
    sget-object v0, Ly40;->M2:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v2, 0x32

    .line 6
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    .line 8
    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 9
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 10
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 11
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzab;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->i:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 12
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    .line 14
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->i:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final Y6(Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lwv;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4
    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lxw0;->I()Lhy0;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 5
    check-cast v2, Lww0;

    invoke-virtual {v2}, Lww0;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    if-eqz v2, :cond_6

    .line 7
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 8
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    .line 9
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    .line 10
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    .line 11
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    .line 12
    :cond_6
    :goto_2
    iget-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    const/16 v5, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Delay onShow to next orientation change: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 13
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v9, v4}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    const/high16 v4, 0x1000000

    .line 14
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 15
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 16
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    if-nez v0, :cond_7

    .line 17
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 18
    :cond_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    sget v4, Lcom/google/android/gms/ads/internal/overlay/zze;->y:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 19
    :goto_3
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 20
    iput-boolean v1, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->u:Z

    if-eqz p1, :cond_e

    .line 21
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lfx0;

    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    .line 22
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lxw0;->c()Ljy0;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_8
    move-object v11, v3

    .line 23
    :goto_4
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_9

    .line 24
    invoke-interface {v0}, Lxw0;->y()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_9
    move-object v12, v3

    :goto_5
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 25
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    const/16 v18, 0x0

    .line 26
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_a

    .line 27
    invoke-interface {v0}, Lxw0;->m()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_6

    :cond_a
    move-object/from16 v19, v3

    .line 28
    :goto_6
    new-instance v20, Lep3;

    invoke-direct/range {v20 .. v20}, Lep3;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v14, v2

    move-object/from16 v17, v4

    .line 29
    invoke-static/range {v10 .. v22}, Lfx0;->a(Landroid/content/Context;Ljy0;Ljava/lang/String;ZZLd23;Lb60;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lep3;Lsk2;Lwk2;)Lxw0;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    const/4 v11, 0x0

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lra0;

    const/4 v13, 0x0

    iget-object v14, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lta0;

    iget-object v15, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 31
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v4, :cond_b

    .line 32
    invoke-interface {v4}, Lxw0;->I()Lhy0;

    move-result-object v3

    check-cast v3, Lww0;

    .line 33
    iget-object v3, v3, Lww0;->u:Lcom/google/android/gms/ads/internal/zza;

    :cond_b
    move-object/from16 v18, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 34
    move-object v10, v0

    check-cast v10, Lww0;

    invoke-virtual/range {v10 .. v24}, Lww0;->z(Ler3;Lra0;Lcom/google/android/gms/ads/internal/overlay/zzp;Lta0;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLob0;Lcom/google/android/gms/ads/internal/zza;Lyp1;Lnp0;Lsy1;Ljq2;Lns1;Lpp2;)V

    .line 35
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 36
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object v0

    new-instance v3, Lsv;

    invoke-direct {v3, v9}, Lsv;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 37
    check-cast v0, Lww0;

    .line 38
    iput-object v3, v0, Lww0;->k:Lgy0;

    .line 39
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 40
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0, v3}, Lxw0;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 41
    :cond_c
    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 42
    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "text/html"

    const-string v14, "UTF-8"

    invoke-interface/range {v10 .. v15}, Lxw0;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_f

    .line 44
    invoke-interface {v0, v9}, Lxw0;->C0(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    goto :goto_8

    .line 45
    :cond_d
    new-instance v0, Lwv;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lwv;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining webview."

    .line 46
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    new-instance v0, Lwv;

    const-string v1, "Could not obtain webview for the overlay."

    invoke-direct {v0, v1}, Lwv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_e
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 49
    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lxw0;->v0(Landroid/content/Context;)V

    .line 50
    :cond_f
    :goto_8
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0, v9}, Lxw0;->b0(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 51
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_10

    .line 52
    invoke-interface {v0}, Lxw0;->r0()Lx20;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lrk0;->c(Lx20;Landroid/view/View;)V

    .line 54
    :cond_10
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    .line 55
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v4}, Lxw0;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_11
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    if-eqz v0, :cond_12

    .line 59
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->j0()V

    .line 60
    :cond_12
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 61
    invoke-interface {v4}, Lxw0;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 62
    invoke-virtual {v0, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_13
    if-nez p1, :cond_14

    .line 63
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    if-nez v0, :cond_14

    .line 64
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->h0()V

    .line 65
    :cond_14
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v4, v3, :cond_16

    .line 66
    invoke-virtual {v9, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->X6(Z)V

    .line 67
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->f0()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 68
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :cond_15
    return-void

    .line 69
    :cond_16
    iget-object v1, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lsy1;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lns1;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lpp2;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcz1;->W6(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_17
    new-instance v0, Lwv;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lwv;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Z6()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->v:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzwq()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v1, v0}, Lxw0;->w0(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v1}, Lxw0;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Luv;

    invoke-direct {v1, p0}, Luv;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->s:Ljava/lang/Runnable;

    .line 9
    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    sget-object v3, Ly40;->G0:Lo40;

    .line 10
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 11
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 13
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->a7()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a7()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->w:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->context:Landroid/content/Context;

    invoke-interface {v2, v0}, Lxw0;->v0(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lxw0;->W(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 9
    invoke-interface {v2}, Lxw0;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget v4, v3, Lcom/google/android/gms/ads/internal/overlay/zzk;->index:I

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdtv:Landroid/view/ViewGroup$LayoutParams;

    .line 10
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lxw0;->v0(Landroid/content/Context;)V

    .line 14
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_4

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Lxw0;->r0()Lx20;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    invoke-interface {v1}, Lxw0;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lrk0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lrk0;->c(Lx20;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdty:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 2
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->m:Z

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_c

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->g:I

    const v3, 0x7270e0

    if-le v2, v3, :cond_1

    .line 5
    sget-object v2, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    .line 8
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shouldCallOnOverlayOpened"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->x:Z

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    const/4 v4, 0x5

    if-eqz v3, :cond_3

    .line 10
    iget-boolean v5, v3, Lcom/google/android/gms/ads/internal/zzk;->zzbpo:Z

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    goto :goto_1

    .line 11
    :cond_3
    iget v5, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-ne v5, v4, :cond_4

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    goto :goto_1

    .line 13
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    .line 14
    :goto_1
    iget-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->n:Z

    if-eqz v5, :cond_5

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v2, v4, :cond_5

    iget v2, v3, Lcom/google/android/gms/ads/internal/zzk;->zzbpt:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 15
    new-instance v2, Lxv;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lxv;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;Ltv;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Law2;

    :cond_5
    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz p1, :cond_6

    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->x:Z

    if-eqz v2, :cond_6

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzvz()V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v2, v1, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Ler3;

    if-eqz p1, :cond_7

    .line 20
    invoke-interface {p1}, Ler3;->onAdClicked()V

    .line 21
    :cond_7
    new-instance p1, Lvv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    invoke-direct {p1, v2, v5, v6, v3}, Lvv;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    const/16 v2, 0x3e8

    .line 22
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzi(Landroid/app/Activity;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v2, v1, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 p1, 0x3

    if-eq v2, p1, :cond_9

    if-ne v2, v4, :cond_8

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Y6(Z)V

    return-void

    .line 26
    :cond_8
    new-instance p1, Lwv;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lwv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->Y6(Z)V

    return-void

    .line 28
    :cond_a
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lxw0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lxw0;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Y6(Z)V

    return-void

    .line 30
    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Y6(Z)V

    return-void

    .line 31
    :cond_c
    new-instance p1, Lwv;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lwv;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lwv; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    invoke-interface {v0}, Lxw0;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Z6()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwf()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V

    .line 4
    :cond_0
    sget-object v0, Ly40;->K2:Lo40;

    .line 5
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->onPause()V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Z6()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->W6(Landroid/content/res/Configuration;)V

    .line 4
    sget-object v0, Ly40;->K2:Lo40;

    .line 5
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 6
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lxw0;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    .line 10
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->m:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    sget-object v0, Ly40;->K2:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxw0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    .line 7
    invoke-static {v0}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    sget-object v0, Ly40;->K2:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->h:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->onPause()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->Z6()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Ly40;->B3:Lo40;

    .line 2
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Ly40;->C3:Lo40;

    .line 6
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Ly40;->D3:Lo40;

    .line 9
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 10
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Ly40;->E3:Lo40;

    .line 12
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 13
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lor0;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 15
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->u:Z

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->j:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 8

    .line 1
    sget-object v0, Ly40;->H0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v3, Ly40;->I0:Lo40;

    .line 6
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzk;->zzbpw:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    const-string v4, "useCustomClose"

    const-string v5, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 10
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "message"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string v5, "onError"

    .line 11
    invoke-interface {p1, v5, v4}, Lod0;->d0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v4, "Error occurred while dispatching error event."

    .line 12
    invoke-static {v4, p1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->i:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 14
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzap(Z)V

    :cond_5
    return-void
.end method

.method public final zzac(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzae(Lx20;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->W6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzdq()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->u:Z

    return-void
.end method

.method public final zzwf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->j:Z

    if-eqz v1, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->u:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->k:Landroid/widget/FrameLayout;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->j:Z

    return-void
.end method

.method public final zzwg()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtx:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzwh()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->q:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lxw0;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 6
    invoke-interface {v1, v3, v2}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzwi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->i:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->X6(Z)V

    return-void
.end method

.method public final zzwl()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->p:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    invoke-interface {v0}, Lxw0;->h0()V

    :cond_0
    return-void
.end method

.method public final zzwn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->o:Lvv;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lvv;->f:Z

    return-void
.end method

.method public final zzwo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->r:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->t:Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->s:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lms2;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->s:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
