.class public final Lvm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lrm0;


# direct methods
.method public constructor <init>(Lrm0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lvm0;->a:J

    .line 3
    iput-object p1, p0, Lvm0;->b:Lrm0;

    return-void
.end method
