.class public final Lv87$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw67$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv87;->a(Lj47;Lx27;Ly27;)La37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lw67;


# direct methods
.method public constructor <init>(Lv87;Lw67;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lv87$c;->a:Lw67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lw67;
    .locals 1

    .line 1
    iget-object v0, p0, Lv87$c;->a:Lw67;

    return-object v0
.end method
