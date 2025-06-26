.class public final Lpe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzs0;


# instance fields
.field public final synthetic a:Loe0;


# direct methods
.method public constructor <init>(Loe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpe0;->a:Loe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpe0;->a:Loe0;

    .line 2
    iget-object v0, v0, Loe0;->d:Lse0;

    .line 3
    invoke-virtual {v0}, Lse0;->e()V

    return-void
.end method
