.class public Li67$n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67$n;->e(Lx47;Lz57$a;Li47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Lz57$a;

.field public final synthetic g:Li47;

.field public final synthetic h:Li67$n;


# direct methods
.method public constructor <init>(Li67$n;Lx47;Lz57$a;Li47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$n$e;->h:Li67$n;

    iput-object p2, p0, Li67$n$e;->e:Lx47;

    iput-object p3, p0, Li67$n$e;->f:Lz57$a;

    iput-object p4, p0, Li67$n$e;->g:Li47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li67$n$e;->h:Li67$n;

    .line 2
    iget-object v0, v0, Li67$n;->a:Lz57;

    .line 3
    iget-object v1, p0, Li67$n$e;->e:Lx47;

    iget-object v2, p0, Li67$n$e;->f:Lz57$a;

    iget-object v3, p0, Li67$n$e;->g:Li47;

    invoke-interface {v0, v1, v2, v3}, Lz57;->e(Lx47;Lz57$a;Li47;)V

    return-void
.end method
