package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes.dex */
public final class ew4 {
    public static final dw4<Long> A;
    public static final dw4<Boolean> A0;
    public static final dw4<Long> B;
    public static final dw4<Boolean> B0;
    public static final dw4<Integer> C;
    public static final dw4<Long> C0;
    public static final dw4<Long> D;
    public static final dw4<Boolean> D0;
    public static final dw4<Integer> E;
    public static final dw4<Boolean> E0;
    public static final dw4<Integer> F;
    public static final dw4<Boolean> F0;
    public static final dw4<Integer> G;
    public static final dw4<Boolean> G0;
    public static final dw4<Integer> H;
    public static final dw4<Integer> H0;
    public static final dw4<Integer> I;
    public static final dw4<Boolean> I0;
    public static final dw4<Long> J;
    public static final dw4<Boolean> J0;
    public static final dw4<Boolean> K;
    public static final dw4<Boolean> K0;
    public static final dw4<String> L;
    public static final dw4<Boolean> L0;
    public static final dw4<Long> M;
    public static final dw4<Boolean> M0;
    public static final dw4<Integer> N;
    public static final dw4<Double> O;
    public static final dw4<Integer> P;
    public static final dw4<Integer> Q;
    public static final dw4<Boolean> R;
    public static final dw4<Boolean> S;
    public static final dw4<Boolean> T;
    public static final dw4<Boolean> U;
    public static final dw4<Boolean> V;
    public static final dw4<Boolean> W;
    public static final dw4<Boolean> X;
    public static final dw4<Boolean> Y;
    public static final dw4<Boolean> Z;
    public static final List<dw4<?>> a = Collections.synchronizedList(new ArrayList());
    public static final dw4<Boolean> a0;
    public static final dw4<Long> b;
    public static final dw4<Boolean> b0;
    public static final dw4<Long> c;
    public static final dw4<Boolean> c0;
    public static final dw4<Long> d;
    public static final dw4<Boolean> d0;
    public static final dw4<String> e;
    public static final dw4<Boolean> e0;
    public static final dw4<String> f;
    public static final dw4<Boolean> f0;
    public static final dw4<Integer> g;
    public static final dw4<Boolean> g0;
    public static final dw4<Integer> h;
    public static final dw4<Boolean> h0;
    public static final dw4<Integer> i;
    public static final dw4<Boolean> i0;
    public static final dw4<Integer> j;
    public static final dw4<Boolean> j0;
    public static final dw4<Integer> k;
    public static final dw4<Boolean> k0;
    public static final dw4<Integer> l;
    public static final dw4<Boolean> l0;
    public static final dw4<Integer> m;
    public static final dw4<Boolean> m0;
    public static final dw4<Integer> n;
    public static final dw4<Boolean> n0;
    public static final dw4<Integer> o;
    public static final dw4<Boolean> o0;
    public static final dw4<Integer> p;
    public static final dw4<Boolean> p0;
    public static final dw4<String> q;
    public static final dw4<Boolean> q0;
    public static final dw4<Long> r;
    public static final dw4<Boolean> r0;
    public static final dw4<Long> s;
    public static final dw4<Boolean> s0;
    public static final dw4<Long> t;
    public static final dw4<Boolean> t0;
    public static final dw4<Long> u;
    public static final dw4<Boolean> u0;
    public static final dw4<Long> v;
    public static final dw4<Boolean> v0;
    public static final dw4<Long> w;
    public static final dw4<Boolean> w0;
    public static final dw4<Long> x;
    public static final dw4<Boolean> x0;
    public static final dw4<Long> y;
    public static final dw4<Boolean> y0;
    public static final dw4<Long> z;
    public static final dw4<Boolean> z0;

    static {
        Collections.synchronizedSet(new HashSet());
        b = b("measurement.ad_id_cache_time", 10000L, 10000L, ps4.a);
        Long lValueOf = Long.valueOf(DateUtils.MILLIS_PER_DAY);
        c = b("measurement.monitoring.sample_period_millis", lValueOf, lValueOf, bt4.a);
        Long lValueOf2 = Long.valueOf(DateUtils.MILLIS_PER_HOUR);
        d = b("measurement.config.cache_time", lValueOf, lValueOf2, mt4.a);
        e = b("measurement.config.url_scheme", "https", "https", yt4.a);
        f = b("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", ju4.a);
        g = b("measurement.upload.max_bundles", 100, 100, uu4.a);
        h = b("measurement.upload.max_batch_size", 65536, 65536, gv4.a);
        i = b("measurement.upload.max_bundle_size", 65536, 65536, rv4.a);
        j = b("measurement.upload.max_events_per_bundle", 1000, 1000, aw4.a);
        k = b("measurement.upload.max_events_per_day", 100000, 100000, bw4.a);
        l = b("measurement.upload.max_error_events_per_day", 1000, 1000, qs4.a);
        m = b("measurement.upload.max_public_events_per_day", 50000, 50000, rs4.a);
        n = b("measurement.upload.max_conversions_per_day", 10000, 10000, ss4.a);
        o = b("measurement.upload.max_realtime_events_per_day", 10, 10, ts4.a);
        p = b("measurement.store.max_stored_events_per_app", 100000, 100000, us4.a);
        q = b("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", ws4.a);
        r = b("measurement.upload.backoff_period", 43200000L, 43200000L, xs4.a);
        s = b("measurement.upload.window_interval", lValueOf2, lValueOf2, ys4.a);
        t = b("measurement.upload.interval", lValueOf2, lValueOf2, zs4.a);
        u = b("measurement.upload.realtime_upload_interval", 10000L, 10000L, at4.a);
        v = b("measurement.upload.debug_upload_interval", 1000L, 1000L, ct4.a);
        w = b("measurement.upload.minimum_delay", 500L, 500L, dt4.a);
        Long lValueOf3 = Long.valueOf(DateUtils.MILLIS_PER_MINUTE);
        x = b("measurement.alarm_manager.minimum_interval", lValueOf3, lValueOf3, et4.a);
        y = b("measurement.upload.stale_data_deletion_interval", lValueOf, lValueOf, ft4.a);
        z = b("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, gt4.a);
        A = b("measurement.upload.initial_upload_delay_time", 15000L, 15000L, ht4.a);
        B = b("measurement.upload.retry_time", 1800000L, 1800000L, it4.a);
        C = b("measurement.upload.retry_count", 6, 6, jt4.a);
        D = b("measurement.upload.max_queue_time", 2419200000L, 2419200000L, kt4.a);
        E = b("measurement.lifetimevalue.max_currency_tracked", 4, 4, lt4.a);
        F = b("measurement.audience.filter_result_max_count", 200, 200, nt4.a);
        G = b("measurement.upload.max_public_user_properties", 25, 25, null);
        H = b("measurement.upload.max_event_name_cardinality", 500, 500, null);
        I = b("measurement.upload.max_public_event_params", 25, 25, null);
        J = b("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, ot4.a);
        Boolean bool = Boolean.FALSE;
        K = b("measurement.test.boolean_flag", bool, bool, pt4.a);
        L = b("measurement.test.string_flag", "---", "---", qt4.a);
        M = b("measurement.test.long_flag", -1L, -1L, rt4.a);
        N = b("measurement.test.int_flag", -2, -2, st4.a);
        Double dValueOf = Double.valueOf(-3.0d);
        O = b("measurement.test.double_flag", dValueOf, dValueOf, tt4.a);
        P = b("measurement.experiment.max_ids", 50, 50, ut4.a);
        Q = b("measurement.max_bundles_per_iteration", 100, 100, vt4.a);
        R = b("measurement.validation.internal_limits_internal_event_params", bool, bool, xt4.a);
        Boolean bool2 = Boolean.TRUE;
        S = b("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, zt4.a);
        T = b("measurement.collection.redundant_engagement_removal_enabled", bool, bool, au4.a);
        U = b("measurement.client.freeride_engagement_fix", bool2, bool2, bu4.a);
        V = b("measurement.collection.log_event_and_bundle_v2", bool2, bool2, cu4.a);
        W = b("measurement.quality.checksum", bool, bool, null);
        X = b("measurement.sdk.dynamite.allow_remote_dynamite3", bool2, bool2, du4.a);
        Y = b("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, eu4.a);
        Z = b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, fu4.a);
        a0 = b("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, gu4.a);
        b0 = b("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, hu4.a);
        c0 = b("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, iu4.a);
        d0 = b("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, ku4.a);
        e0 = b("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, lu4.a);
        f0 = b("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, mu4.a);
        g0 = b("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, nu4.a);
        h0 = b("measurement.upload.file_lock_state_check", bool, bool, ou4.a);
        i0 = b("measurement.ga.ga_app_id", bool, bool, pu4.a);
        j0 = b("measurement.lifecycle.app_in_background_parameter", bool, bool, qu4.a);
        k0 = b("measurement.integration.disable_firebase_instance_id", bool, bool, ru4.a);
        l0 = b("measurement.lifecycle.app_backgrounded_engagement", bool, bool, su4.a);
        m0 = b("measurement.collection.service.update_with_analytics_fix", bool, bool, tu4.a);
        n0 = b("measurement.service.use_appinfo_modified", bool, bool, vu4.a);
        o0 = b("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, wu4.a);
        p0 = b("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, yu4.a);
        q0 = b("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, zu4.a);
        r0 = b("measurement.upload.file_truncate_fix", bool, bool, av4.a);
        s0 = b("measurement.sdk.referrer.delayed_install_referrer_api", bool, bool, bv4.a);
        t0 = b("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, cv4.a);
        u0 = b("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, dv4.a);
        b("measurement.collection.synthetic_data_mitigation", bool, bool, ev4.a);
        v0 = b("measurement.service.configurable_service_limits", bool2, bool2, fv4.a);
        w0 = b("measurement.client.configurable_service_limits", bool2, bool2, hv4.a);
        x0 = b("measurement.androidId.delete_feature", bool2, bool2, iv4.a);
        y0 = b("measurement.client.global_params", bool2, bool2, jv4.a);
        z0 = b("measurement.service.global_params", bool2, bool2, kv4.a);
        A0 = b("measurement.service.global_params_in_payload", bool2, bool2, lv4.a);
        B0 = b("measurement.sdk.attribution.cache", bool2, bool2, mv4.a);
        C0 = b("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, nv4.a);
        D0 = b("measurement.service.database_return_empty_collection", bool2, bool2, ov4.a);
        E0 = b("measurement.client.consent_state_v1", bool2, bool2, pv4.a);
        F0 = b("measurement.client.3p_consent_state_v1", bool2, bool2, qv4.a);
        G0 = b("measurement.service.consent_state_v1_W36", bool2, bool2, sv4.a);
        H0 = b("measurement.service.storage_consent_support_version", 203590, 203590, tv4.a);
        I0 = b("measurement.client.ad_impression", bool2, bool2, uv4.a);
        J0 = b("measurement.service.ad_impression", bool2, bool2, vv4.a);
        K0 = b("measurement.service.separate_public_internal_event_blacklisting", bool2, bool2, wv4.a);
        L0 = b("measurement.service.directly_maybe_log_error_events", bool, bool, xv4.a);
        M0 = b("measurement.client.safer_resources", bool2, bool2, zv4.a);
    }

    public static Map<String, String> a(Context context) {
        j64 j64VarB = j64.b(context.getContentResolver(), s64.a("com.google.android.gms.measurement"));
        return j64VarB == null ? Collections.emptyMap() : j64VarB.c();
    }

    public static <V> dw4<V> b(String str, V v2, V v3, cw4<V> cw4Var) {
        dw4<V> dw4Var = new dw4<>(str, v2, v3, cw4Var);
        a.add(dw4Var);
        return dw4Var;
    }
}
