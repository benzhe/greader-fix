.class public Lmh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhh5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lah5;->a:Lah5;

    const-string p2, "Skipping logging Crashlytics event to Firebase, no Firebase Analytics"

    invoke-virtual {p1, p2}, Lah5;->b(Ljava/lang/String;)V

    return-void
.end method
