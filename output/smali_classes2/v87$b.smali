.class public final Lv87$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls87$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv87;->a(Lj47;Lx27;Ly27;)La37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lj47;

.field public final synthetic b:Lv87;


# direct methods
.method public constructor <init>(Lv87;Lj47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv87$b;->b:Lv87;

    iput-object p2, p0, Lv87$b;->a:Lj47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ls87;
    .locals 2

    .line 1
    iget-object v0, p0, Lv87$b;->b:Lv87;

    .line 2
    iget-boolean v0, v0, Lv87;->c:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ls87;->f:Ls87;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lv87$b;->b:Lv87;

    iget-object v1, p0, Lv87$b;->a:Lj47;

    invoke-virtual {v0, v1}, Lv87;->c(Lj47;)Ls87;

    move-result-object v0

    return-object v0
.end method
