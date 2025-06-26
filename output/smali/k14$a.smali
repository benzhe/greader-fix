.class public final Lk14$a;
.super Lsx3$a;
.source "SourceFile"

# interfaces
.implements Lzy3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsx3$a<",
        "Lk14;",
        "Lk14$a;",
        ">;",
        "Lzy3;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll14;)V
    .locals 0

    .line 1
    invoke-static {}, Lk14;->j()Lk14;

    move-result-object p1

    invoke-direct {p0, p1}, Lsx3$a;-><init>(Lsx3;)V

    return-void
.end method
