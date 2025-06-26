.class public Li67$n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67$n;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Li67$n;


# direct methods
.method public constructor <init>(Li67$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$n$b;->e:Li67$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li67$n$b;->e:Li67$n;

    .line 2
    iget-object v0, v0, Li67$n;->a:Lz57;

    .line 3
    invoke-interface {v0}, Lc97;->d()V

    return-void
.end method
