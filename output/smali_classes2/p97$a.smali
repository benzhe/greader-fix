.class public Lp97$a;
.super Lb77;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb77<",
        "Lo97;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp97;


# direct methods
.method public constructor <init>(Lp97;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp97$a;->b:Lp97;

    invoke-direct {p0}, Lb77;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp97$a;->b:Lp97;

    .line 2
    iget-object v0, v0, Lp97;->g:Lc87$a;

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Lc87$a;->d(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp97$a;->b:Lp97;

    .line 2
    iget-object v0, v0, Lp97;->g:Lc87$a;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lc87$a;->d(Z)V

    return-void
.end method
