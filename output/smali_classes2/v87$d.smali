.class public final Lv87$d;
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
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Ls87;


# direct methods
.method public constructor <init>(Lv87;Ls87;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lv87$d;->a:Ls87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ls87;
    .locals 1

    .line 1
    iget-object v0, p0, Lv87$d;->a:Ls87;

    return-object v0
.end method
