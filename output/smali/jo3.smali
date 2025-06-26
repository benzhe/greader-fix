.class public final Ljo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan3;


# instance fields
.field public final synthetic a:Lio3;


# direct methods
.method public constructor <init>(Lio3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljo3;->a:Lio3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ljo3;->a:Lio3;

    .line 2
    invoke-virtual {p1}, Lio3;->a()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Ljo3;->a:Lio3;

    invoke-static {p1}, Lio3;->d(Lio3;)V

    return-void
.end method
