.class public final synthetic Lgx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lus0;


# direct methods
.method public constructor <init>(Lus0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx0;->a:Lus0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lgx0;->a:Lus0;

    .line 2
    iget-object v0, p1, Lus0;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method
