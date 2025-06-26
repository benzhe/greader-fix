.class public final Ll37$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll37$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Ll37;


# direct methods
.method public constructor <init>(Ll37;Lk37;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll37$f;->a:Ll37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll37;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll37$f;->a:Ll37;

    instance-of v1, v0, Ll37$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ll37$a;

    invoke-virtual {p1}, Ll37;->e()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll37$a;->t(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ll37;->n()V

    :goto_0
    return-void
.end method
