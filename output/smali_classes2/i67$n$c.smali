.class public Li67$n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67$n;->c(Li47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li47;

.field public final synthetic f:Li67$n;


# direct methods
.method public constructor <init>(Li67$n;Li47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$n$c;->f:Li67$n;

    iput-object p2, p0, Li67$n$c;->e:Li47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li67$n$c;->f:Li67$n;

    .line 2
    iget-object v0, v0, Li67$n;->a:Lz57;

    .line 3
    iget-object v1, p0, Li67$n$c;->e:Li47;

    invoke-interface {v0, v1}, Lz57;->c(Li47;)V

    return-void
.end method
