.class public final synthetic Lhu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Ld23;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ld23;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu1;->e:Ld23;

    iput-object p2, p0, Lhu1;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lhu1;->e:Ld23;

    iget-object v1, p0, Lhu1;->f:Landroid/content/Context;

    .line 2
    iget-object v0, v0, Ld23;->b:Lws2;

    .line 3
    invoke-interface {v0, v1}, Lws2;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
