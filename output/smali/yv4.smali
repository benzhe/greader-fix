.class public Lyv4;
.super Lly4;
.source "SourceFile"

# interfaces
.implements Lny4;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lly4;-><init>(Lrx4;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    return-void
.end method
