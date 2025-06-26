.class public Li67$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li67$n;->a(Lc97$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lc97$a;

.field public final synthetic f:Li67$n;


# direct methods
.method public constructor <init>(Li67$n;Lc97$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li67$n$a;->f:Li67$n;

    iput-object p2, p0, Li67$n$a;->e:Lc97$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li67$n$a;->f:Li67$n;

    .line 2
    iget-object v0, v0, Li67$n;->a:Lz57;

    .line 3
    iget-object v1, p0, Li67$n$a;->e:Lc97$a;

    invoke-interface {v0, v1}, Lc97;->a(Lc97$a;)V

    return-void
.end method
