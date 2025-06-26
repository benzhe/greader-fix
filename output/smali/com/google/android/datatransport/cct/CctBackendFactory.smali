.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Los;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lss;)Lxs;
    .locals 3

    .line 1
    new-instance v0, Ler;

    .line 2
    invoke-virtual {p1}, Lss;->a()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lss;->d()Ldv;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lss;->c()Ldv;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ler;-><init>(Landroid/content/Context;Ldv;Ldv;)V

    return-object v0
.end method
