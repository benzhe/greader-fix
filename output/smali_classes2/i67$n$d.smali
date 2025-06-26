.class public Li67$n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67$n;->b(Lx47;Li47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Li47;

.field public final synthetic g:Li67$n;


# direct methods
.method public constructor <init>(Li67$n;Lx47;Li47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$n$d;->g:Li67$n;

    iput-object p2, p0, Li67$n$d;->e:Lx47;

    iput-object p3, p0, Li67$n$d;->f:Li47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li67$n$d;->g:Li67$n;

    .line 2
    iget-object v0, v0, Li67$n;->a:Lz57;

    .line 3
    iget-object v1, p0, Li67$n$d;->e:Lx47;

    iget-object v2, p0, Li67$n$d;->f:Li47;

    invoke-interface {v0, v1, v2}, Lz57;->b(Lx47;Li47;)V

    return-void
.end method
