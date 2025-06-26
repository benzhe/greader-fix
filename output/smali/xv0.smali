.class public final Lxv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Luv0;


# direct methods
.method public constructor <init>(Luv0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxv0;->e:Luv0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lwv0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lxv0;->e:Luv0;

    .line 3
    iget-object v0, v0, Lwv0;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
