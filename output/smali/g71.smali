.class public final synthetic Lg71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Luv1;


# direct methods
.method public constructor <init>(Luv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg71;->a:Luv1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    iget-object v0, p0, Lg71;->a:Luv1;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    invoke-virtual {v0, p1}, Luv1;->a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;

    move-result-object p1

    return-object p1
.end method
